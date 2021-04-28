package main

import (
	"io/ioutil"
	"net/http"
	"os"

	"github.com/hashicorp/go-hclog"
	"github.com/nicholasjackson/wasp/engine"
	"github.com/nicholasjackson/wasp/engine/logger"
)

var waspEngine *engine.Wasm
var log hclog.Logger

func setupWasm() {
	log = hclog.Default()
	log.SetLevel(hclog.Debug)
	engineLog := log.Named("engine")

	// the wasp engine takes a wrapped logger that adapts your
	// logger interface into wasps
	wrappedLogger := logger.New(
		engineLog.Info,
		engineLog.Debug,
		engineLog.Error,
		engineLog.Trace,
	)

	// Create the plugin engine
	waspEngine = engine.New(wrappedLogger)

	// setup the host functions for the plugin
	cb := &engine.Callbacks{}
	cb.AddCallback("env", "get_payload", getPayloadFromURL)
	conf := &engine.PluginConfig{
		Callbacks: cb,
	}

	// Register and compile the Wasm module to the plugin engine
	err := waspEngine.RegisterPlugin("quotes", "../quote-of-the-day/go/module.wasm", conf)
	if err != nil {
		log.Error("Error loading plugin", "error", err)
		os.Exit(1)
	}
}

func getInstance() engine.Instance {
	i, err := waspEngine.GetInstance("quotes", "")
	if err != nil {
		log.Error("Unable to get instance", "error", err)
	}
	return i
}

func getPayloadFromURL(url string) string {
	log.Info("getPayload", "url", url)

	resp, err := http.Get(url)
	if err != nil {
		log.Error("Unable to get URL", "url", url, "error", err)
		return ""
	}

	if resp.StatusCode != http.StatusOK {
		log.Error("Unable to get Payload", "url", url, "code", resp.StatusCode)
		return ""
	}

	d, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Error("Unable to read response body", "error", err)
		return ""
	}

	return string(d)
}
