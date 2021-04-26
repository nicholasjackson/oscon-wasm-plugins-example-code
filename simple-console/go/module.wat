(module
  (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i32 i32) (result f64)))
  (type (;10;) (func (param i32 i32 i32) (result i64)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32)))
  (type (;13;) (func (param i32 i64 i64 i64 i64 i64) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i64 i32 i32)))
  (type (;15;) (func (param i32 i64)))
  (type (;16;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;17;) (func (param i32 i64 i32)))
  (type (;18;) (func (param i32 i64 i32 i32 i32)))
  (type (;19;) (func (param i32 f64 f64 i32)))
  (type (;20;) (func (param i32 f64 i32)))
  (import "wasi_unstable" "fd_write" (func $runtime.fd_write (type 0)))
  (func $runtime.alloc (type 1) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=73604
    local.tee 1
    local.get 0
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    local.tee 2
    i32.add
    local.tee 0
    i32.store offset=73604
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 0
          i32.load offset=74976
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 0
          loop  ;; label = @4
            local.get 0
            local.get 2
            i32.ge_u
            br_if 3 (;@1;)
            local.get 1
            local.get 0
            i32.add
            i32.const 0
            i32.store
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            br 0 (;@4;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            memory.size
            memory.grow
            i32.const -1
            i32.eq
            br_if 0 (;@4;)
            i32.const 0
            memory.size
            i32.const 16
            i32.shl
            i32.store offset=74976
            br 1 (;@3;)
          end
          i32.const 70039
          i32.const 13
          call $runtime.runtimePanic
        end
        i32.const 0
        i32.load offset=73604
        local.set 0
        br 0 (;@2;)
      end
    end
    local.get 1)
  (func $runtime.runtimePanic (type 2) (param i32 i32)
    i32.const 70128
    i32.const 22
    call $runtime.printstring
    local.get 0
    local.get 1
    call $runtime.printstring
    call $runtime.printnl
    unreachable
    unreachable)
  (func $runtime.lookupPanic (type 3)
    i32.const 70064
    i32.const 18
    call $runtime.runtimePanic)
  (func $runtime.nilPanic (type 3)
    i32.const 70096
    i32.const 23
    call $runtime.runtimePanic)
  (func $unicode/utf8.DecodeRuneInString (type 4) (param i32 i32 i32)
    (local i32 i32 i32)
    local.get 1
    i32.load8_u
    local.tee 3
    i32.const 65536
    i32.add
    i32.load8_u
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const -194
                i32.add
                i32.const 50
                i32.gt_u
                br_if 0 (;@6;)
                local.get 4
                i32.const 7
                i32.and
                local.get 2
                i32.gt_s
                br_if 2 (;@4;)
                local.get 2
                i32.const 2
                i32.lt_u
                br_if 5 (;@1;)
                local.get 1
                i32.load8_u offset=1
                local.tee 5
                local.get 4
                i32.const 3
                i32.shr_u
                i32.const 30
                i32.and
                local.tee 4
                i32.const 65792
                i32.add
                i32.load8_u
                i32.const 255
                i32.and
                i32.lt_u
                br_if 2 (;@4;)
                local.get 4
                i32.const 65793
                i32.add
                i32.load8_u
                i32.const 255
                i32.and
                local.get 5
                i32.ge_u
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 0
              i32.const 1
              i32.store offset=4
              local.get 0
              i32.const 65533
              local.get 3
              local.get 4
              i32.const 1
              i32.and
              select
              i32.store
              return
            end
            local.get 3
            i32.const -224
            i32.add
            i32.const 21
            i32.ge_u
            br_if 1 (;@3;)
            local.get 2
            i32.const 3
            i32.lt_u
            br_if 3 (;@1;)
            local.get 1
            i32.load8_s offset=2
            local.tee 4
            i32.const -1
            i32.gt_s
            br_if 0 (;@4;)
            local.get 4
            i32.const 255
            i32.and
            i32.const 191
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const -240
            i32.add
            i32.const 5
            i32.ge_u
            br_if 2 (;@2;)
            local.get 2
            i32.const 4
            i32.lt_u
            br_if 3 (;@1;)
            local.get 1
            i32.load8_s offset=3
            local.tee 1
            i32.const -1
            i32.gt_s
            br_if 0 (;@4;)
            local.get 1
            i32.const 255
            i32.and
            i32.const 191
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            i32.const 4
            i32.store offset=4
            local.get 0
            local.get 5
            i32.const 63
            i32.and
            i32.const 12
            i32.shl
            local.get 3
            i32.const 7
            i32.and
            i32.const 18
            i32.shl
            i32.or
            local.get 4
            i32.const 63
            i32.and
            i32.const 6
            i32.shl
            i32.or
            local.get 1
            i32.const 63
            i32.and
            i32.or
            i32.store
            return
          end
          local.get 0
          i64.const 4295032829
          i64.store
          return
        end
        local.get 0
        i32.const 2
        i32.store offset=4
        local.get 0
        local.get 3
        i32.const 31
        i32.and
        i32.const 6
        i32.shl
        local.get 5
        i32.const 63
        i32.and
        i32.or
        i32.store
        return
      end
      local.get 0
      i32.const 3
      i32.store offset=4
      local.get 0
      local.get 5
      i32.const 63
      i32.and
      i32.const 6
      i32.shl
      local.get 3
      i32.const 15
      i32.and
      i32.const 12
      i32.shl
      i32.or
      local.get 4
      i32.const 63
      i32.and
      i32.or
      i32.store
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $runtime.slicePanic (type 3)
    i32.const 70160
    i32.const 18
    call $runtime.runtimePanic)
  (func $runtime._panic (type 2) (param i32 i32)
    i32.const 70032
    i32.const 7
    call $runtime.printstring
    local.get 0
    local.get 1
    call $runtime.printitf
    call $runtime.printnl
    unreachable
    unreachable)
  (func $runtime.printstring (type 2) (param i32 i32)
    local.get 1
    i32.const 0
    local.get 1
    i32.const 0
    i32.gt_s
    select
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load8_u
        call $runtime.putchar
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end)
  (func $runtime.printitf (type 2) (param i32 i32)
    (local i32 i32 i64 i64 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 34
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 1
        i32.load offset=4
        call $runtime.printstring
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        call $error$typeassert
        i32.const 1
        i32.and
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.const 0
        local.get 3
        select
        local.get 0
        i32.const 0
        local.get 3
        select
        call $_error_.Error
        local.get 2
        i32.load
        local.get 2
        i32.load offset=4
        call $runtime.printstring
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.const 88
        i32.ne
        br_if 0 (;@2;)
        i32.const 66056
        i32.const 1
        call $runtime.printstring
        br 1 (;@1;)
      end
      i32.const 40
      call $runtime.putchar
      local.get 2
      i32.const 24
      i32.add
      i32.const 0
      i32.store
      local.get 2
      i32.const 16
      i32.add
      i64.const 0
      i64.store
      local.get 2
      i64.const 0
      i64.store offset=8
      local.get 0
      i64.extend_i32_u
      local.set 4
      i32.const 19
      local.set 3
      i32.const 19
      local.set 0
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const -1
            i32.gt_s
            br_if 0 (;@4;)
            local.get 3
            i32.const 20
            local.get 3
            i32.const 20
            i32.gt_s
            select
            local.get 3
            i32.sub
            local.set 0
            local.get 2
            i32.const 8
            i32.add
            local.get 3
            i32.add
            local.set 3
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.eqz
                br_if 1 (;@5;)
                local.get 3
                i32.load8_u
                call $runtime.putchar
                local.get 0
                i32.const -1
                i32.add
                local.set 0
                local.get 3
                i32.const 1
                i32.add
                local.set 3
                br 0 (;@6;)
              end
            end
            i32.const 58
            call $runtime.putchar
            block  ;; label = @5
              local.get 1
              br_if 0 (;@5;)
              i32.const 70323
              i32.const 3
              call $runtime.printstring
              br 3 (;@2;)
            end
            i32.const 48
            call $runtime.putchar
            i32.const 120
            call $runtime.putchar
            i32.const 8
            local.set 0
            loop  ;; label = @5
              local.get 0
              i32.eqz
              br_if 3 (;@2;)
              local.get 1
              i32.const 28
              i32.shr_u
              local.tee 3
              i32.const 48
              i32.or
              local.get 3
              i32.const 87
              i32.add
              local.get 3
              i32.const 10
              i32.lt_u
              select
              call $runtime.putchar
              local.get 0
              i32.const -1
              i32.add
              local.set 0
              local.get 1
              i32.const 4
              i32.shl
              local.set 1
              br 0 (;@5;)
            end
          end
          local.get 2
          i32.const 8
          i32.add
          local.get 0
          i32.add
          local.get 4
          local.get 4
          i64.const 10
          i64.div_u
          local.tee 5
          i64.const 10
          i64.mul
          i64.sub
          i32.wrap_i64
          i32.const 48
          i32.or
          local.tee 6
          i32.store8
          local.get 3
          local.get 0
          local.get 6
          i32.const 255
          i32.and
          i32.const 48
          i32.eq
          select
          local.set 3
          local.get 0
          i32.const -1
          i32.add
          local.set 0
          local.get 5
          local.set 4
          br 0 (;@3;)
        end
      end
      i32.const 41
      call $runtime.putchar
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func $runtime.printnl (type 3)
    i32.const 13
    call $runtime.putchar
    i32.const 10
    call $runtime.putchar)
  (func $_reflect.Value_.Len (type 5) (param i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  call $_reflect.Type_.Kind
                  i32.const -17
                  i32.add
                  br_table 5 (;@2;) 0 (;@7;) 2 (;@5;) 0 (;@7;) 0 (;@7;) 4 (;@3;) 1 (;@6;) 0 (;@7;) 3 (;@4;) 0 (;@7;)
                end
                i32.const 8
                call $runtime.alloc
                local.tee 0
                i32.const 3
                i32.store offset=4
                local.get 0
                i32.const 66189
                i32.store
                i32.const 997
                local.get 0
                call $runtime._panic
                unreachable
              end
              local.get 0
              call $_reflect.Type_.Len
              return
            end
            local.get 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 1
            i32.load offset=24
            return
          end
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.load offset=8
          return
        end
        local.get 1
        i32.load offset=4
        return
      end
      local.get 1
      i32.load offset=4
      return
    end
    i32.const 0)
  (func $_reflect.Type_.Kind (type 1) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 1
    i32.shr_u
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 1
      i32.const 31
      i32.and
      return
    end
    local.get 1
    i32.const 7
    i32.and
    i32.const 19
    i32.add)
  (func $_reflect.Type_.Len (type 1) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      local.get 0
      call $_reflect.Type_.Kind
      i32.const 23
      i32.eq
      br_if 0 (;@1;)
      i32.const 8
      call $runtime.alloc
      local.tee 1
      i32.const 3
      i32.store offset=4
      local.get 1
      i32.const 66189
      i32.store
      i32.const 63
      local.get 1
      call $runtime._panic
      unreachable
    end
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $_reflect.Type_.stripPrefix
    i32.const 73188
    i32.add
    call $reflect.readVarint
    local.get 1
    local.get 1
    i32.load offset=12
    call $reflect.readVarint
    local.get 1
    i32.load
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func $_reflect.Type_.Elem (type 1) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          call $_reflect.Type_.Kind
          i32.const -19
          i32.add
          br_table 0 (;@3;) 2 (;@1;) 0 (;@3;) 0 (;@3;) 1 (;@2;) 2 (;@1;)
        end
        local.get 0
        call $_reflect.Type_.stripPrefix
        local.set 0
        local.get 1
        i32.const 16
        i32.add
        global.set 0
        local.get 0
        return
      end
      local.get 1
      i32.const 8
      i32.add
      local.get 0
      call $_reflect.Type_.stripPrefix
      i32.const 73188
      i32.add
      call $reflect.readVarint
      local.get 1
      i32.load offset=8
      local.set 0
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      local.get 0
      return
    end
    i32.const 34
    i32.const 65912
    call $runtime._panic
    unreachable)
  (func $_reflect.Type_.stripPrefix (type 1) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 5
    i32.shr_u
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 16
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 2
      i32.shl
      i32.const 73136
      i32.add
      i32.load
      return
    end
    local.get 1)
  (func $reflect.readVarint (type 2) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    loop  ;; label = @1
      i32.const 0
      local.get 1
      i32.load8_s
      local.tee 4
      i32.const 127
      i32.and
      local.get 3
      i32.shl
      local.get 3
      i32.const 31
      i32.gt_u
      select
      local.get 2
      i32.or
      local.set 2
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      local.get 3
      i32.const 7
      i32.add
      local.set 3
      local.get 4
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func $_reflect.Type_.Size (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    i32.const 0
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 1
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        call $_reflect.Type_.Kind
                        i32.const -1
                        i32.add
                        br_table 9 (;@1;) 2 (;@8;) 9 (;@1;) 0 (;@10;) 2 (;@8;) 4 (;@6;) 2 (;@8;) 9 (;@1;) 0 (;@10;) 2 (;@8;) 4 (;@6;) 2 (;@8;) 2 (;@8;) 4 (;@6;) 4 (;@6;) 1 (;@9;) 4 (;@6;) 2 (;@8;) 2 (;@8;) 4 (;@6;) 2 (;@8;) 3 (;@7;) 5 (;@5;) 8 (;@2;) 2 (;@8;) 6 (;@4;) 8 (;@2;)
                      end
                      i32.const 2
                      local.set 3
                      br 8 (;@1;)
                    end
                    i32.const 16
                    local.set 3
                    br 7 (;@1;)
                  end
                  i32.const 4
                  local.set 3
                  br 6 (;@1;)
                end
                i32.const 12
                local.set 3
                br 5 (;@1;)
              end
              i32.const 8
              local.set 3
              br 4 (;@1;)
            end
            local.get 0
            call $_reflect.Type_.Elem
            call $_reflect.Type_.Size
            local.set 3
            local.get 0
            call $_reflect.Type_.Len
            local.set 0
            local.get 1
            i32.const 32
            i32.add
            global.set 0
            local.get 0
            local.get 3
            i32.mul
            local.get 2
            i32.add
            return
          end
          block  ;; label = @4
            local.get 0
            call $_reflect.Type_.NumField
            local.tee 3
            br_if 0 (;@4;)
            i32.const 0
            local.set 3
            br 3 (;@1;)
          end
          local.get 1
          i32.const 8
          i32.add
          local.get 0
          local.get 3
          i32.const -1
          i32.add
          call $_reflect.Type_.Field
          local.get 1
          i32.load offset=28
          local.get 2
          i32.add
          local.set 2
          local.get 1
          i32.load offset=24
          local.set 0
          br 0 (;@3;)
        end
      end
      i32.const 34
      i32.const 66048
      call $runtime._panic
      unreachable
    end
    local.get 1
    i32.const 32
    i32.add
    global.set 0
    local.get 3
    local.get 2
    i32.add)
  (func $_reflect.Type_.NumField (type 1) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      local.get 0
      call $_reflect.Type_.Kind
      i32.const 26
      i32.eq
      br_if 0 (;@1;)
      i32.const 8
      call $runtime.alloc
      local.tee 1
      i32.const 8
      i32.store offset=4
      local.get 1
      i32.const 65999
      i32.store
      i32.const 2021
      local.get 1
      call $runtime._panic
      unreachable
    end
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $_reflect.Type_.stripPrefix
    i32.const 73200
    i32.add
    call $reflect.readVarint
    local.get 1
    i32.load offset=8
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func $_reflect.Type_.Field (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        call $_reflect.Type_.Kind
        i32.const 26
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        i32.const 40
        i32.add
        local.get 1
        call $_reflect.Type_.stripPrefix
        i32.const 73200
        i32.add
        call $reflect.readVarint
        local.get 3
        i32.load offset=40
        local.get 2
        i32.le_u
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=44
        local.set 1
        i32.const 0
        local.set 4
        i32.const 0
        local.set 5
        i32.const 0
        local.set 6
        i32.const 0
        local.set 7
        i32.const 0
        local.set 8
        i32.const 0
        local.set 9
        i32.const 0
        local.set 10
        i32.const 0
        local.set 11
        block  ;; label = @3
          loop  ;; label = @4
            local.get 11
            local.get 2
            i32.gt_s
            br_if 1 (;@3;)
            local.get 1
            i32.load8_u
            local.set 6
            local.get 3
            i32.const 32
            i32.add
            local.get 1
            i32.const 1
            i32.add
            call $reflect.readVarint
            local.get 3
            i32.load offset=36
            local.set 1
            local.get 3
            i32.load offset=32
            local.tee 5
            call $_reflect.Type_.Align
            local.set 4
            local.get 5
            call $_reflect.Type_.Size
            local.set 7
            local.get 3
            i32.const 24
            i32.add
            local.get 1
            call $reflect.readVarint
            local.get 3
            i32.load offset=28
            local.set 1
            local.get 3
            i32.const 16
            i32.add
            local.get 3
            i32.load offset=24
            i32.const 73344
            i32.add
            call $reflect.readVarint
            local.get 10
            local.get 4
            i32.add
            i32.const -1
            i32.add
            i32.const 0
            local.get 4
            i32.sub
            i32.and
            local.set 4
            local.get 3
            i32.load offset=20
            local.set 9
            local.get 3
            i32.load offset=16
            local.set 8
            block  ;; label = @5
              local.get 6
              i32.const 2
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.const 8
              i32.add
              local.get 1
              call $reflect.readVarint
              local.get 3
              i32.load offset=12
              local.set 1
            end
            local.get 4
            local.get 7
            i32.add
            local.set 10
            i32.const 68227
            i32.const 65984
            local.get 6
            i32.const 4
            i32.and
            local.tee 6
            select
            local.set 7
            i32.const 0
            i32.const 15
            local.get 6
            select
            local.set 6
            local.get 11
            i32.const 1
            i32.add
            local.set 11
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 4
        i32.store offset=20
        local.get 0
        local.get 5
        i32.store offset=16
        local.get 0
        local.get 6
        i32.store offset=12
        local.get 0
        local.get 7
        i32.store offset=8
        local.get 0
        local.get 8
        i32.store offset=4
        local.get 0
        local.get 9
        i32.store
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        return
      end
      i32.const 8
      call $runtime.alloc
      local.tee 3
      i32.const 5
      i32.store offset=4
      local.get 3
      i32.const 65920
      i32.store
      i32.const 2021
      local.get 3
      call $runtime._panic
      unreachable
    end
    i32.const 34
    i32.const 65976
    call $runtime._panic
    unreachable)
  (func $_reflect.Type_.Align (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 4
          local.set 2
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  call $_reflect.Type_.Kind
                  i32.const -1
                  i32.add
                  br_table 0 (;@7;) 6 (;@1;) 0 (;@7;) 1 (;@6;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 0 (;@7;) 1 (;@6;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 3 (;@4;) 5 (;@2;) 6 (;@1;) 2 (;@5;) 5 (;@2;)
                end
                i32.const 1
                local.set 2
                br 5 (;@1;)
              end
              i32.const 2
              local.set 2
              br 4 (;@1;)
            end
            i32.const 0
            local.set 3
            local.get 0
            call $_reflect.Type_.NumField
            local.tee 2
            i32.const 0
            local.get 2
            i32.const 0
            i32.gt_s
            select
            local.set 4
            i32.const 1
            local.set 2
            loop  ;; label = @5
              local.get 4
              local.get 3
              i32.eq
              br_if 4 (;@1;)
              local.get 1
              i32.const 8
              i32.add
              local.get 0
              local.get 3
              call $_reflect.Type_.Field
              local.get 1
              i32.load offset=24
              call $_reflect.Type_.Align
              local.tee 5
              local.get 2
              local.get 5
              local.get 2
              i32.gt_s
              select
              local.set 2
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              br 0 (;@5;)
            end
          end
          local.get 0
          call $_reflect.Type_.Elem
          local.set 0
          br 0 (;@3;)
        end
      end
      i32.const 34
      i32.const 65856
      call $runtime._panic
      unreachable
    end
    local.get 1
    i32.const 32
    i32.add
    global.set 0
    local.get 2)
  (func $_reflect.Value_.Bool (type 6) (param i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        call $_reflect.Type_.Kind
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        local.get 1
        i32.const 0
        i32.ne
        return
      end
      i32.const 8
      call $runtime.alloc
      local.tee 1
      i32.const 4
      i32.store offset=4
      local.get 1
      i32.const 66057
      i32.store
      i32.const 997
      local.get 1
      call $runtime._panic
      unreachable
    end
    local.get 1
    i32.load8_u)
  (func $_reflect.Value_.Complex (type 4) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          call $_reflect.Type_.Kind
          i32.const -15
          i32.add
          br_table 1 (;@2;) 2 (;@1;) 0 (;@3;)
        end
        i32.const 8
        call $runtime.alloc
        local.tee 2
        i32.const 7
        i32.store offset=4
        local.get 2
        i32.const 66061
        i32.store
        i32.const 997
        local.get 2
        call $runtime._panic
        unreachable
      end
      local.get 0
      local.get 2
      f32.load offset=4
      f64.promote_f32
      f64.store offset=8
      local.get 0
      local.get 2
      f32.load
      f64.promote_f32
      f64.store
      return
    end
    local.get 0
    local.get 2
    f64.load offset=8
    f64.store offset=8
    local.get 0
    local.get 2
    f64.load
    f64.store)
  (func $_reflect.Value_.Elem (type 7) (param i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        call $_reflect.Type_.Kind
        i32.const 21
        i32.ne
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load
          local.set 2
        end
        local.get 2
        br_if 1 (;@1;)
        local.get 0
        i32.const 0
        i32.store8 offset=8
        local.get 0
        i64.const 0
        i64.store
        return
      end
      i32.const 8
      call $runtime.alloc
      local.tee 2
      i32.const 4
      i32.store offset=4
      local.get 2
      i32.const 66068
      i32.store
      i32.const 997
      local.get 2
      call $runtime._panic
      unreachable
    end
    local.get 1
    call $_reflect.Type_.Elem
    local.set 1
    local.get 0
    local.get 3
    i32.const 1
    i32.or
    i32.store8 offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_reflect.Value_.Field (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    i32.const 8
    i32.add
    local.get 1
    local.get 4
    call $_reflect.Type_.Field
    local.get 3
    i32.const -3
    i32.and
    local.get 3
    local.get 5
    i32.load offset=20
    select
    local.set 6
    local.get 5
    i32.load offset=28
    local.set 7
    local.get 5
    i32.load offset=24
    local.set 4
    local.get 1
    call $_reflect.Type_.Size
    local.set 8
    local.get 4
    call $_reflect.Type_.Size
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 1
          i32.const 5
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 8
          i32.const 5
          i32.ge_u
          br_if 2 (;@1;)
          local.get 0
          local.get 6
          i32.store8 offset=8
          local.get 0
          local.get 4
          i32.store
          local.get 0
          i32.const -1
          i32.const 32
          local.get 1
          i32.const 3
          i32.shl
          i32.sub
          i32.shr_u
          i32.const 0
          local.get 2
          local.get 7
          i32.const 3
          i32.shl
          local.tee 3
          i32.shr_u
          local.get 3
          i32.const 31
          i32.gt_u
          select
          i32.and
          i32.store offset=4
          local.get 5
          i32.const 32
          i32.add
          global.set 0
          return
        end
        local.get 0
        local.get 6
        i32.store8 offset=8
        local.get 0
        local.get 4
        i32.store
        local.get 0
        local.get 2
        local.get 7
        i32.add
        i32.store offset=4
        local.get 5
        i32.const 32
        i32.add
        global.set 0
        return
      end
      local.get 0
      local.get 6
      i32.store8 offset=8
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      local.get 4
      i32.store
      local.get 5
      i32.const 32
      i32.add
      global.set 0
      return
    end
    local.get 2
    local.get 7
    i32.add
    local.get 1
    call $reflect.loadValue
    local.set 3
    local.get 0
    i32.const 0
    i32.store8 offset=8
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 5
    i32.const 32
    i32.add
    global.set 0)
  (func $reflect.loadValue (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.get 0
        i32.load8_u
        local.get 3
        i32.shl
        local.get 3
        i32.const 31
        i32.gt_u
        select
        local.get 2
        i32.or
        local.set 2
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 2)
  (func $_reflect.Value_.Float (type 9) (param i32 i32 i32) (result f64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            call $_reflect.Type_.Kind
            i32.const -13
            i32.add
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 8
          call $runtime.alloc
          local.tee 1
          i32.const 5
          i32.store offset=4
          local.get 1
          i32.const 66072
          i32.store
          i32.const 997
          local.get 1
          call $runtime._panic
          unreachable
        end
        local.get 2
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        local.get 1
        f32.reinterpret_i32
        f64.promote_f32
        return
      end
      local.get 1
      f64.load
      return
    end
    local.get 1
    f32.load
    f64.promote_f32)
  (func $_reflect.Value_.Index (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  call $_reflect.Type_.Kind
                  i32.const -17
                  i32.add
                  br_table 1 (;@6;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 0 (;@7;) 3 (;@4;) 2 (;@5;)
                end
                local.get 2
                i32.load offset=4
                local.get 4
                i32.le_u
                br_if 3 (;@3;)
                local.get 2
                i32.load
                local.set 2
                local.get 1
                call $_reflect.Type_.Elem
                local.tee 1
                call $_reflect.Type_.Size
                local.set 5
                local.get 0
                local.get 3
                i32.const 1
                i32.or
                i32.store8 offset=8
                local.get 0
                local.get 1
                i32.store
                local.get 0
                local.get 2
                local.get 5
                local.get 4
                i32.mul
                i32.add
                i32.store offset=4
                return
              end
              local.get 2
              i32.load offset=4
              local.get 4
              i32.le_u
              br_if 3 (;@2;)
              local.get 0
              i32.const 0
              i32.store8 offset=8
              local.get 0
              i32.const 16
              i32.store
              local.get 0
              local.get 2
              i32.load
              local.get 4
              i32.add
              i32.load8_u
              i32.store offset=4
              return
            end
            i32.const 8
            call $runtime.alloc
            local.tee 0
            i32.const 5
            i32.store offset=4
            local.get 0
            i32.const 66176
            i32.store
            i32.const 997
            local.get 0
            call $runtime._panic
            unreachable
          end
          local.get 1
          call $_reflect.Type_.Elem
          call $_reflect.Type_.Size
          local.set 5
          local.get 1
          call $_reflect.Type_.Size
          local.tee 6
          br_if 2 (;@1;)
          local.get 1
          call $_reflect.Type_.Elem
          local.set 1
          local.get 0
          local.get 3
          i32.store8 offset=8
          local.get 0
          i32.const 0
          i32.store offset=4
          local.get 0
          local.get 1
          i32.store
          return
        end
        i32.const 34
        i32.const 66120
        call $runtime._panic
        unreachable
      end
      i32.const 34
      i32.const 66168
      call $runtime._panic
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.get 4
        i32.mul
        local.set 4
        local.get 6
        i32.const 4
        i32.gt_u
        br_if 1 (;@1;)
        local.get 1
        call $_reflect.Type_.Elem
        local.set 1
        local.get 0
        local.get 3
        i32.store8 offset=8
        local.get 0
        local.get 1
        i32.store
        local.get 0
        i32.const -1
        i32.const 32
        local.get 5
        i32.const 3
        i32.shl
        i32.sub
        i32.shr_u
        i32.const 0
        local.get 5
        select
        i32.const 0
        local.get 2
        local.get 4
        i32.const 3
        i32.shl
        local.tee 1
        i32.shr_u
        local.get 1
        i32.const 31
        i32.gt_u
        select
        i32.and
        i32.store offset=4
        return
      end
      local.get 1
      call $_reflect.Type_.Elem
      local.set 1
      local.get 0
      local.get 3
      i32.store8 offset=8
      local.get 0
      local.get 1
      i32.store
      local.get 0
      local.get 2
      local.get 5
      local.get 4
      i32.mul
      i32.add
      i32.store offset=4
      return
    end
    local.get 1
    call $_reflect.Type_.Elem
    local.set 1
    local.get 2
    local.get 4
    i32.add
    local.get 5
    call $reflect.loadValue
    local.set 2
    local.get 0
    local.get 3
    i32.store8 offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_reflect.Value_.Int (type 10) (param i32 i32 i32) (result i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        call $_reflect.Type_.Kind
                        i32.const -2
                        i32.add
                        br_table 1 (;@9;) 2 (;@8;) 3 (;@7;) 4 (;@6;) 5 (;@5;) 0 (;@10;)
                      end
                      i32.const 8
                      call $runtime.alloc
                      local.tee 1
                      i32.const 3
                      i32.store offset=4
                      local.get 1
                      i32.const 66181
                      i32.store
                      i32.const 997
                      local.get 1
                      call $runtime._panic
                      unreachable
                    end
                    local.get 2
                    i32.const 1
                    i32.and
                    br_if 4 (;@4;)
                    local.get 1
                    i64.extend_i32_s
                    return
                  end
                  local.get 2
                  i32.const 1
                  i32.and
                  br_if 4 (;@3;)
                  local.get 1
                  i64.extend_i32_u
                  i64.const 56
                  i64.shl
                  i64.const 56
                  i64.shr_s
                  return
                end
                local.get 2
                i32.const 1
                i32.and
                br_if 4 (;@2;)
                local.get 1
                i64.extend_i32_u
                i64.const 48
                i64.shl
                i64.const 48
                i64.shr_s
                return
              end
              local.get 2
              i32.const 1
              i32.and
              br_if 4 (;@1;)
              local.get 1
              i64.extend_i32_s
              return
            end
            local.get 1
            i64.load
            return
          end
          local.get 1
          i64.load32_s
          return
        end
        local.get 1
        i64.load8_s
        return
      end
      local.get 1
      i64.load16_s
      return
    end
    local.get 1
    i64.load32_s)
  (func $_reflect.Value_.Interface (type 7) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 3
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call $_reflect.Type_.Size
      i32.const 4
      i32.gt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const -1
      i32.add
      local.set 4
      i32.const 0
      local.set 2
      local.get 1
      call $_reflect.Type_.Size
      local.set 3
      loop  ;; label = @2
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 8
        i32.shl
        local.get 4
        local.get 3
        i32.add
        i32.load8_u
        i32.or
        local.set 2
        local.get 3
        i32.const -1
        i32.add
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_reflect.Value_.IsNil (type 6) (param i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  call $_reflect.Type_.Kind
                  i32.const -19
                  i32.add
                  br_table 1 (;@6;) 4 (;@3;) 1 (;@6;) 3 (;@4;) 0 (;@7;) 2 (;@5;) 1 (;@6;) 0 (;@7;)
                end
                i32.const 8
                call $runtime.alloc
                local.tee 1
                i32.const 5
                i32.store offset=4
                local.get 1
                i32.const 66184
                i32.store
                i32.const 997
                local.get 1
                call $runtime._panic
                unreachable
              end
              local.get 2
              i32.const 1
              i32.and
              br_if 3 (;@2;)
              local.get 1
              i32.eqz
              return
            end
            local.get 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 1
            i32.load offset=4
            i32.eqz
            return
          end
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.load
          i32.eqz
          return
        end
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=4
        i32.eqz
        return
      end
      local.get 1
      i32.load
      i32.eqz
      return
    end
    i32.const 1)
  (func $_reflect.Value_.MapRange (type 3)
    i32.const 34
    i32.const 66240
    call $runtime._panic
    unreachable)
  (func $_reflect.Value_.Pointer (type 6) (param i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                call $_reflect.Type_.Kind
                local.tee 0
                i32.const 25
                i32.gt_u
                br_if 0 (;@6;)
                i32.const 1
                local.get 0
                i32.shl
                i32.const 36438016
                i32.and
                br_if 1 (;@5;)
                local.get 0
                i32.const 22
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                i32.const 24
                i32.eq
                br_if 3 (;@3;)
              end
              i32.const 8
              call $runtime.alloc
              local.tee 1
              i32.const 7
              i32.store offset=4
              local.get 1
              i32.const 66304
              i32.store
              i32.const 997
              local.get 1
              call $runtime._panic
              unreachable
            end
            local.get 2
            i32.const 1
            i32.and
            br_if 2 (;@2;)
            local.get 1
            return
          end
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.load
          return
        end
        i32.const 34
        i32.const 66296
        call $runtime._panic
        unreachable
      end
      local.get 1
      i32.load
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $_reflect.Value_.String (type 4) (param i32 i32 i32)
    block  ;; label = @1
      local.get 1
      call $_reflect.Type_.Kind
      i32.const 17
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 3
      i32.store offset=4
      local.get 0
      i32.const 66311
      i32.store
      return
    end
    local.get 0
    local.get 2
    i64.load align=4
    i64.store)
  (func $_reflect.Value_.Uint (type 10) (param i32 i32 i32) (result i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            call $_reflect.Type_.Kind
                            i32.const -7
                            i32.add
                            br_table 4 (;@8;) 2 (;@10;) 3 (;@9;) 5 (;@7;) 6 (;@6;) 1 (;@11;) 0 (;@12;)
                          end
                          i32.const 8
                          call $runtime.alloc
                          local.tee 1
                          i32.const 4
                          i32.store offset=4
                          local.get 1
                          i32.const 66314
                          i32.store
                          i32.const 997
                          local.get 1
                          call $runtime._panic
                          unreachable
                        end
                        local.get 2
                        i32.const 1
                        i32.and
                        br_if 5 (;@5;)
                        local.get 1
                        i64.extend_i32_u
                        return
                      end
                      local.get 2
                      i32.const 1
                      i32.and
                      br_if 5 (;@4;)
                      local.get 1
                      i64.extend_i32_u
                      return
                    end
                    local.get 2
                    i32.const 1
                    i32.and
                    br_if 5 (;@3;)
                    local.get 1
                    i64.extend_i32_u
                    return
                  end
                  local.get 2
                  i32.const 1
                  i32.and
                  br_if 5 (;@2;)
                  local.get 1
                  i64.extend_i32_u
                  return
                end
                local.get 2
                i32.const 1
                i32.and
                br_if 5 (;@1;)
                local.get 1
                i64.extend_i32_u
                return
              end
              local.get 1
              i64.load
              return
            end
            local.get 1
            i64.load32_u
            return
          end
          local.get 1
          i64.load8_u
          return
        end
        local.get 1
        i64.load16_u
        return
      end
      local.get 1
      i64.load32_u
      return
    end
    local.get 1
    i64.load32_u)
  (func $runtime.sliceAppend (type 11) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          local.get 3
          i32.add
          local.tee 6
          local.get 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          local.set 7
          br 1 (;@2;)
        end
        local.get 4
        i32.const 1
        i32.shl
        local.tee 4
        i32.const 1
        local.get 4
        select
        local.set 7
        loop  ;; label = @3
          local.get 7
          local.tee 4
          i32.const 1
          i32.shl
          local.set 7
          local.get 6
          local.get 4
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 4
        call $runtime.alloc
        local.set 7
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 1
        local.get 3
        call $memcpy
        drop
      end
      local.get 7
      local.get 3
      i32.add
      local.get 2
      local.get 5
      call $memmove
      drop
      local.get 0
      local.get 4
      i32.store offset=8
      local.get 0
      local.get 6
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
      return
    end
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $runtime.stringConcat (type 8) (param i32 i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        i32.add
        local.tee 5
        call $runtime.alloc
        local.get 1
        local.get 2
        call $memcpy
        local.tee 1
        local.get 2
        i32.add
        local.get 3
        local.get 4
        call $memcpy
        drop
        local.get 0
        local.get 5
        i32.store offset=4
        local.get 0
        local.get 1
        i32.store
        return
      end
      local.get 0
      local.get 4
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
      return
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $runtime.putchar (type 12) (param i32)
    (local i32 i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=74980
      local.tee 1
      i32.const 119
      i32.le_u
      br_if 0 (;@1;)
      call $runtime.lookupPanic
      unreachable
    end
    i32.const 0
    local.get 1
    i32.const 1
    i32.add
    local.tee 2
    i32.store offset=74980
    local.get 1
    i32.const 74992
    i32.add
    local.get 0
    i32.store8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.and
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.const 119
        i32.ne
        br_if 1 (;@1;)
      end
      i32.const 0
      local.get 2
      i32.store offset=73612
      i32.const 1
      i32.const 73608
      i32.const 1
      i32.const 75112
      call $runtime.fd_write
      drop
      i32.const 0
      i32.const 0
      i32.store offset=74980
    end)
  (func $strconv.appendQuotedWith (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 432
    i32.sub
    local.tee 5
    global.set 0
    i32.const 68
    local.set 6
    i32.const 0
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 69
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 0
        local.set 7
        local.get 3
        i32.const 2
        i32.add
        local.tee 6
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
        local.get 6
        call $runtime.alloc
        local.set 1
      end
      local.get 5
      i32.const 34
      i32.store offset=396
      local.get 5
      i32.const 368
      i32.add
      local.get 1
      local.get 5
      i32.const 396
      i32.add
      local.get 7
      local.get 6
      i32.const 1
      call $runtime.sliceAppend
      local.get 5
      i32.load offset=376
      local.set 7
      local.get 5
      i32.load offset=372
      local.set 8
      local.get 5
      i32.load offset=368
      local.set 9
      local.get 4
      i32.const 1
      i32.and
      local.set 10
      loop  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 0
          i32.gt_s
          br_if 0 (;@3;)
          local.get 5
          i32.const 34
          i32.store offset=384
          local.get 5
          i32.const 352
          i32.add
          local.get 9
          local.get 5
          i32.const 384
          i32.add
          local.get 8
          local.get 7
          i32.const 1
          call $runtime.sliceAppend
          local.get 5
          i32.load offset=360
          local.set 3
          local.get 0
          local.get 5
          i32.load offset=352
          i32.store
          local.get 0
          local.get 3
          i32.store offset=8
          local.get 0
          local.get 5
          i32.load offset=356
          i32.store offset=4
          local.get 5
          i32.const 432
          i32.add
          global.set 0
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load8_s
              local.tee 6
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              local.get 6
              i32.const 255
              i32.and
              local.set 6
              i32.const 1
              local.set 1
              br 1 (;@4;)
            end
            local.get 5
            i32.const 344
            i32.add
            local.get 2
            local.get 3
            call $unicode/utf8.DecodeRuneInString
            local.get 5
            i32.load offset=344
            local.set 6
            local.get 5
            i32.load offset=348
            local.tee 1
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 6
            i32.const 65533
            i32.ne
            br_if 0 (;@4;)
            local.get 5
            i32.const 40
            i32.add
            local.get 9
            i32.const 66746
            local.get 8
            local.get 7
            i32.const 2
            call $runtime.sliceAppend
            local.get 2
            i32.load8_u
            local.set 6
            local.get 5
            i32.const 0
            i32.store offset=392
            local.get 5
            local.get 6
            i32.const 4
            i32.shr_u
            i32.const 66748
            i32.add
            i32.load8_u
            i32.store8 offset=392
            i32.const 1
            local.set 1
            local.get 5
            i32.const 24
            i32.add
            local.get 5
            i32.load offset=40
            local.get 5
            i32.const 392
            i32.add
            local.get 5
            i32.load offset=44
            local.get 5
            i32.load offset=48
            i32.const 1
            call $runtime.sliceAppend
            local.get 2
            i32.load8_u
            local.set 6
            local.get 5
            i32.const 0
            i32.store offset=388
            local.get 5
            local.get 6
            i32.const 15
            i32.and
            i32.const 66748
            i32.add
            i32.load8_u
            i32.store8 offset=388
            local.get 5
            i32.const 8
            i32.add
            local.get 5
            i32.load offset=24
            local.get 5
            i32.const 388
            i32.add
            local.get 5
            i32.load offset=28
            local.get 5
            i32.load offset=32
            i32.const 1
            call $runtime.sliceAppend
            local.get 5
            i32.load offset=16
            local.set 7
            local.get 5
            i32.load offset=12
            local.set 8
            local.get 5
            i32.load offset=8
            local.set 9
            br 1 (;@3;)
          end
          local.get 5
          i32.const 0
          i32.store offset=428
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                i32.const 92
                i32.eq
                br_if 0 (;@6;)
                local.get 6
                i32.const 34
                i32.ne
                br_if 1 (;@5;)
              end
              local.get 5
              i32.const 92
              i32.store offset=424
              local.get 5
              i32.const 328
              i32.add
              local.get 9
              local.get 5
              i32.const 424
              i32.add
              local.get 8
              local.get 7
              i32.const 1
              call $runtime.sliceAppend
              local.get 5
              i32.const 0
              i32.store offset=420
              local.get 5
              local.get 6
              i32.store8 offset=420
              local.get 5
              i32.const 312
              i32.add
              local.get 5
              i32.load offset=328
              local.get 5
              i32.const 420
              i32.add
              local.get 5
              i32.load offset=332
              local.get 5
              i32.load offset=336
              i32.const 1
              call $runtime.sliceAppend
              local.get 5
              i32.load offset=320
              local.set 7
              local.get 5
              i32.load offset=316
              local.set 8
              local.get 5
              i32.load offset=312
              local.set 9
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 10
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.const 127
                i32.gt_s
                br_if 1 (;@5;)
                local.get 6
                call $strconv.IsPrint
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 5
                i32.const 0
                i32.store offset=416
                local.get 5
                local.get 6
                i32.store8 offset=416
                local.get 5
                i32.const 56
                i32.add
                local.get 9
                local.get 5
                i32.const 416
                i32.add
                local.get 8
                local.get 7
                i32.const 1
                call $runtime.sliceAppend
                local.get 5
                i32.load offset=64
                local.set 7
                local.get 5
                i32.load offset=60
                local.set 8
                local.get 5
                i32.load offset=56
                local.set 9
                br 2 (;@4;)
              end
              local.get 6
              call $strconv.IsPrint
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.const 128
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 2048
                      i32.lt_u
                      br_if 1 (;@8;)
                      i32.const 65533
                      local.set 4
                      block  ;; label = @10
                        local.get 6
                        i32.const 1114111
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 6
                        i32.const -2048
                        i32.and
                        i32.const 55296
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 6
                        i32.const 65536
                        i32.ge_u
                        br_if 3 (;@7;)
                        local.get 6
                        local.set 4
                      end
                      local.get 5
                      local.get 4
                      i32.const 63
                      i32.and
                      i32.const 128
                      i32.or
                      i32.store8 offset=430
                      local.get 5
                      local.get 4
                      i32.const 12
                      i32.shr_u
                      i32.const 224
                      i32.or
                      i32.store8 offset=428
                      local.get 5
                      local.get 4
                      i32.const 6
                      i32.shr_u
                      i32.const 63
                      i32.and
                      i32.const 128
                      i32.or
                      i32.store8 offset=429
                      i32.const 3
                      local.set 6
                      br 3 (;@6;)
                    end
                    local.get 5
                    local.get 6
                    i32.store8 offset=428
                    i32.const 1
                    local.set 6
                    br 2 (;@6;)
                  end
                  local.get 5
                  local.get 6
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=429
                  local.get 5
                  local.get 6
                  i32.const 6
                  i32.shr_u
                  i32.const 192
                  i32.or
                  i32.store8 offset=428
                  i32.const 2
                  local.set 6
                  br 1 (;@6;)
                end
                local.get 5
                local.get 6
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=431
                local.get 5
                local.get 6
                i32.const 18
                i32.shr_u
                i32.const 240
                i32.or
                i32.store8 offset=428
                local.get 5
                local.get 6
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=430
                local.get 5
                local.get 6
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=429
                i32.const 4
                local.set 6
              end
              local.get 5
              i32.const 296
              i32.add
              local.get 9
              local.get 5
              i32.const 428
              i32.add
              local.get 8
              local.get 7
              local.get 6
              call $runtime.sliceAppend
              local.get 5
              i32.load offset=304
              local.set 7
              local.get 5
              i32.load offset=300
              local.set 8
              local.get 5
              i32.load offset=296
              local.set 9
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 6
                            i32.const -7
                            i32.add
                            br_table 0 (;@12;) 1 (;@11;) 5 (;@7;) 3 (;@9;) 6 (;@6;) 2 (;@10;) 4 (;@8;) 7 (;@5;)
                          end
                          local.get 5
                          i32.const 184
                          i32.add
                          local.get 9
                          i32.const 66728
                          local.get 8
                          local.get 7
                          i32.const 2
                          call $runtime.sliceAppend
                          local.get 5
                          i32.load offset=192
                          local.set 7
                          local.get 5
                          i32.load offset=188
                          local.set 8
                          local.get 5
                          i32.load offset=184
                          local.set 9
                          br 7 (;@4;)
                        end
                        local.get 5
                        i32.const 200
                        i32.add
                        local.get 9
                        i32.const 66730
                        local.get 8
                        local.get 7
                        i32.const 2
                        call $runtime.sliceAppend
                        local.get 5
                        i32.load offset=208
                        local.set 7
                        local.get 5
                        i32.load offset=204
                        local.set 8
                        local.get 5
                        i32.load offset=200
                        local.set 9
                        br 6 (;@4;)
                      end
                      local.get 5
                      i32.const 216
                      i32.add
                      local.get 9
                      i32.const 66732
                      local.get 8
                      local.get 7
                      i32.const 2
                      call $runtime.sliceAppend
                      local.get 5
                      i32.load offset=224
                      local.set 7
                      local.get 5
                      i32.load offset=220
                      local.set 8
                      local.get 5
                      i32.load offset=216
                      local.set 9
                      br 5 (;@4;)
                    end
                    local.get 5
                    i32.const 232
                    i32.add
                    local.get 9
                    i32.const 66734
                    local.get 8
                    local.get 7
                    i32.const 2
                    call $runtime.sliceAppend
                    local.get 5
                    i32.load offset=240
                    local.set 7
                    local.get 5
                    i32.load offset=236
                    local.set 8
                    local.get 5
                    i32.load offset=232
                    local.set 9
                    br 4 (;@4;)
                  end
                  local.get 5
                  i32.const 248
                  i32.add
                  local.get 9
                  i32.const 66736
                  local.get 8
                  local.get 7
                  i32.const 2
                  call $runtime.sliceAppend
                  local.get 5
                  i32.load offset=256
                  local.set 7
                  local.get 5
                  i32.load offset=252
                  local.set 8
                  local.get 5
                  i32.load offset=248
                  local.set 9
                  br 3 (;@4;)
                end
                local.get 5
                i32.const 264
                i32.add
                local.get 9
                i32.const 66738
                local.get 8
                local.get 7
                i32.const 2
                call $runtime.sliceAppend
                local.get 5
                i32.load offset=272
                local.set 7
                local.get 5
                i32.load offset=268
                local.set 8
                local.get 5
                i32.load offset=264
                local.set 9
                br 2 (;@4;)
              end
              local.get 5
              i32.const 280
              i32.add
              local.get 9
              i32.const 66740
              local.get 8
              local.get 7
              i32.const 2
              call $runtime.sliceAppend
              local.get 5
              i32.load offset=288
              local.set 7
              local.get 5
              i32.load offset=284
              local.set 8
              local.get 5
              i32.load offset=280
              local.set 9
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 6
              i32.const 31
              i32.gt_s
              br_if 0 (;@5;)
              local.get 5
              i32.const 104
              i32.add
              local.get 9
              i32.const 66746
              local.get 8
              local.get 7
              i32.const 2
              call $runtime.sliceAppend
              local.get 5
              i32.const 0
              i32.store offset=412
              local.get 5
              local.get 6
              i32.const 4
              i32.shr_u
              i32.const 15
              i32.and
              i32.const 66748
              i32.add
              i32.load8_u
              i32.store8 offset=412
              local.get 5
              i32.const 88
              i32.add
              local.get 5
              i32.load offset=104
              local.get 5
              i32.const 412
              i32.add
              local.get 5
              i32.load offset=108
              local.get 5
              i32.load offset=112
              i32.const 1
              call $runtime.sliceAppend
              local.get 5
              i32.const 0
              i32.store offset=408
              local.get 5
              local.get 6
              i32.const 15
              i32.and
              i32.const 66748
              i32.add
              i32.load8_u
              i32.store8 offset=408
              local.get 5
              i32.const 72
              i32.add
              local.get 5
              i32.load offset=88
              local.get 5
              i32.const 408
              i32.add
              local.get 5
              i32.load offset=92
              local.get 5
              i32.load offset=96
              i32.const 1
              call $runtime.sliceAppend
              local.get 5
              i32.load offset=80
              local.set 7
              local.get 5
              i32.load offset=76
              local.set 8
              local.get 5
              i32.load offset=72
              local.set 9
              br 1 (;@4;)
            end
            i32.const 65533
            local.set 4
            block  ;; label = @5
              local.get 6
              i32.const 1114112
              i32.ge_s
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 6
                i32.const 65536
                i32.ge_s
                br_if 0 (;@6;)
                local.get 6
                local.set 4
                br 1 (;@5;)
              end
              local.get 5
              i32.const 168
              i32.add
              local.get 9
              i32.const 66744
              local.get 8
              local.get 7
              i32.const 2
              call $runtime.sliceAppend
              i32.const 28
              local.set 4
              local.get 5
              i32.load offset=176
              local.set 7
              local.get 5
              i32.load offset=172
              local.set 8
              local.get 5
              i32.load offset=168
              local.set 9
              loop  ;; label = @6
                local.get 4
                i32.const 0
                i32.lt_s
                br_if 2 (;@4;)
                local.get 5
                i32.const 0
                i32.store offset=400
                local.get 5
                local.get 6
                local.get 4
                i32.const 31
                local.get 4
                i32.const 31
                i32.lt_u
                select
                i32.shr_s
                i32.const 15
                i32.and
                i32.const 66748
                i32.add
                i32.load8_u
                i32.store8 offset=400
                local.get 5
                i32.const 152
                i32.add
                local.get 9
                local.get 5
                i32.const 400
                i32.add
                local.get 8
                local.get 7
                i32.const 1
                call $runtime.sliceAppend
                local.get 4
                i32.const -4
                i32.add
                local.set 4
                local.get 5
                i32.load offset=160
                local.set 7
                local.get 5
                i32.load offset=156
                local.set 8
                local.get 5
                i32.load offset=152
                local.set 9
                br 0 (;@6;)
              end
            end
            local.get 5
            i32.const 136
            i32.add
            local.get 9
            i32.const 66742
            local.get 8
            local.get 7
            i32.const 2
            call $runtime.sliceAppend
            i32.const 12
            local.set 6
            local.get 5
            i32.load offset=144
            local.set 7
            local.get 5
            i32.load offset=140
            local.set 8
            local.get 5
            i32.load offset=136
            local.set 9
            loop  ;; label = @5
              local.get 6
              i32.const 0
              i32.lt_s
              br_if 1 (;@4;)
              local.get 5
              i32.const 0
              i32.store offset=404
              local.get 5
              local.get 4
              local.get 6
              i32.const 31
              local.get 6
              i32.const 31
              i32.lt_u
              select
              i32.shr_s
              i32.const 15
              i32.and
              i32.const 66748
              i32.add
              i32.load8_u
              i32.store8 offset=404
              local.get 5
              i32.const 120
              i32.add
              local.get 9
              local.get 5
              i32.const 404
              i32.add
              local.get 8
              local.get 7
              i32.const 1
              call $runtime.sliceAppend
              local.get 6
              i32.const -4
              i32.add
              local.set 6
              local.get 5
              i32.load offset=128
              local.set 7
              local.get 5
              i32.load offset=124
              local.set 8
              local.get 5
              i32.load offset=120
              local.set 9
              br 0 (;@5;)
            end
          end
          local.get 3
          local.get 1
          i32.lt_u
          br_if 2 (;@1;)
        end
        local.get 3
        local.get 1
        i32.sub
        local.set 3
        local.get 2
        local.get 1
        i32.add
        local.set 2
        br 0 (;@2;)
      end
    end
    call $runtime.slicePanic
    unreachable)
  (func $strconv.IsPrint (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 255
          i32.gt_s
          br_if 0 (;@3;)
          i32.const 1
          local.set 1
          local.get 0
          i32.const -32
          i32.add
          i32.const 94
          i32.le_u
          br_if 1 (;@2;)
          i32.const 0
          local.set 1
          local.get 0
          i32.const 161
          i32.lt_s
          br_if 1 (;@2;)
          local.get 0
          i32.const 173
          i32.ne
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 65536
            i32.lt_s
            br_if 0 (;@4;)
            i32.const 0
            local.set 2
            i32.const 468
            local.set 1
            loop  ;; label = @5
              local.get 1
              local.get 2
              i32.le_s
              br_if 2 (;@3;)
              local.get 1
              local.get 2
              i32.sub
              i32.const 2
              i32.div_s
              local.get 2
              i32.add
              local.tee 3
              i32.const 468
              i32.ge_u
              br_if 4 (;@1;)
              local.get 3
              i32.const 1
              i32.add
              local.get 2
              local.get 3
              i32.const 2
              i32.shl
              i32.const 71264
              i32.add
              i32.load
              local.get 0
              i32.lt_u
              local.tee 4
              select
              local.set 2
              local.get 1
              local.get 3
              local.get 4
              select
              local.set 1
              br 0 (;@5;)
            end
          end
          i32.const 0
          local.set 1
          i32.const 73640
          i32.const 434
          local.get 0
          call $strconv.bsearch16
          local.tee 2
          i32.const 433
          i32.gt_s
          br_if 1 (;@2;)
          local.get 2
          i32.const -2
          i32.and
          local.tee 3
          i32.const 433
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          i32.const 1
          i32.shl
          i32.const 73640
          i32.add
          i32.load16_u
          local.get 0
          i32.const 65535
          i32.and
          i32.gt_u
          br_if 1 (;@2;)
          local.get 2
          i32.const 1
          i32.or
          local.tee 2
          i32.const 433
          i32.gt_u
          br_if 2 (;@1;)
          local.get 2
          i32.const 1
          i32.shl
          i32.const 73640
          i32.add
          i32.load16_u
          local.get 0
          i32.const 65535
          i32.and
          i32.lt_u
          br_if 1 (;@2;)
          i32.const 1
          local.set 1
          i32.const 74508
          i32.const 132
          local.get 0
          call $strconv.bsearch16
          local.tee 2
          i32.const 131
          i32.gt_s
          br_if 1 (;@2;)
          local.get 2
          i32.const 1
          i32.shl
          i32.const 74508
          i32.add
          i32.load16_u
          local.get 0
          i32.const 65535
          i32.and
          i32.ne
          return
        end
        i32.const 0
        local.set 1
        local.get 2
        i32.const 467
        i32.gt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const -2
        i32.and
        local.tee 3
        i32.const 467
        i32.gt_u
        br_if 1 (;@1;)
        local.get 3
        i32.const 2
        i32.shl
        i32.const 71264
        i32.add
        i32.load
        local.get 0
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.or
        local.tee 2
        i32.const 467
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 2
        i32.shl
        i32.const 71264
        i32.add
        i32.load
        local.get 0
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        local.get 0
        i32.const 131071
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 74772
        i32.const 95
        local.get 0
        call $strconv.bsearch16
        local.tee 2
        i32.const 94
        i32.gt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.shl
        i32.const 74772
        i32.add
        i32.load16_u
        local.get 0
        i32.const 65535
        i32.and
        i32.ne
        local.set 1
      end
      local.get 1
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $strconv.bsearch16 (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    i32.const 0
    local.set 3
    local.get 2
    i32.const 65535
    i32.and
    local.set 4
    local.get 1
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          local.get 3
          i32.le_s
          br_if 1 (;@2;)
          local.get 2
          local.get 3
          i32.sub
          i32.const 2
          i32.div_s
          local.get 3
          i32.add
          local.tee 5
          local.get 1
          i32.ge_u
          br_if 2 (;@1;)
          local.get 2
          local.get 5
          local.get 0
          local.get 5
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
          local.get 4
          i32.lt_u
          local.tee 6
          select
          local.set 2
          local.get 5
          i32.const 1
          i32.add
          local.get 3
          local.get 6
          select
          local.set 3
          br 0 (;@3;)
        end
      end
      local.get 3
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $strconv.adjustLastDigit (type 13) (param i32 i64 i64 i64 i64 i64) (result i32)
    (local i32 i64 i32)
    i32.const 0
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i64.const 1
        i64.shl
        local.get 4
        i64.gt_u
        br_if 0 (;@2;)
        local.get 4
        i64.const 1
        i64.shr_u
        local.get 5
        i64.add
        local.set 7
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                local.get 1
                i64.add
                local.get 2
                i64.ge_u
                br_if 0 (;@6;)
                local.get 0
                br_if 1 (;@5;)
                br 5 (;@1;)
              end
              local.get 1
              local.get 3
              local.get 5
              i64.sub
              i64.gt_u
              br_if 3 (;@2;)
              local.get 1
              local.get 5
              i64.lt_u
              br_if 3 (;@2;)
              local.get 4
              local.get 1
              i64.add
              local.get 7
              local.get 2
              i64.add
              i64.le_u
              br_if 3 (;@2;)
              local.get 0
              i32.eqz
              br_if 4 (;@1;)
              i32.const 1
              local.set 6
              local.get 0
              i32.load offset=12
              i32.const 1
              i32.ne
              br_if 3 (;@2;)
              local.get 0
              i32.load offset=4
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.load
              i32.load8_u
              i32.const 48
              i32.ne
              br_if 3 (;@2;)
              local.get 0
              i64.const 0
              i64.store offset=12 align=4
              br 3 (;@2;)
            end
            local.get 0
            i32.load offset=12
            i32.const -1
            i32.add
            local.tee 8
            local.get 0
            i32.load offset=4
            i32.ge_u
            br_if 1 (;@3;)
            local.get 0
            i32.load
            local.get 8
            i32.add
            local.tee 8
            local.get 8
            i32.load8_u
            i32.const -1
            i32.add
            i32.store8
            local.get 1
            local.get 4
            i64.add
            local.set 1
            br 0 (;@4;)
          end
        end
        call $runtime.lookupPanic
        unreachable
      end
      local.get 6
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $strconv.bigFtoa (type 14) (param i32 i32 i32 i32 i64 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 7
    global.set 0
    i32.const 812
    call $runtime.alloc
    local.tee 8
    local.get 4
    call $_*strconv.decimal_.Assign
    block  ;; label = @1
      local.get 6
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 8
    local.get 5
    local.get 6
    i32.load
    i32.sub
    call $_*strconv.decimal_.Shift
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 8
          local.get 2
          i32.const 1
          local.get 2
          select
          local.tee 5
          call $_*strconv.decimal_.Round
          local.get 8
          i32.load offset=800
          local.set 6
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
            local.get 8
            i32.const 0
            i32.store offset=800
            local.get 8
            i32.const 800
            i32.add
            local.set 9
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 6
            i32.load offset=8
            i32.const 1
            i32.add
            local.tee 10
            local.get 5
            i32.ge_s
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=804
            local.get 8
            i32.load offset=800
            i32.sub
            i32.const 332
            i32.mul
            local.get 5
            local.get 6
            i32.load
            i32.sub
            i32.const 100
            i32.mul
            i32.lt_s
            br_if 0 (;@4;)
            local.get 8
            i32.const 800
            i32.add
            local.set 9
            br 1 (;@3;)
          end
          i32.const 812
          call $runtime.alloc
          local.tee 11
          local.get 4
          i64.const 1
          i64.shl
          local.tee 12
          i64.const 1
          i64.or
          call $_*strconv.decimal_.Assign
          local.get 11
          local.get 6
          i32.load
          i32.const -1
          i32.xor
          local.get 5
          i32.add
          call $_*strconv.decimal_.Shift
          local.get 6
          i64.load32_u
          local.set 13
          i32.const 812
          call $runtime.alloc
          local.tee 14
          local.get 4
          local.get 12
          local.get 10
          local.get 5
          i32.eq
          i64.const 0
          i64.const 1
          local.get 13
          i64.shl
          local.get 13
          i64.const 63
          i64.gt_u
          select
          local.get 4
          i64.lt_u
          i32.or
          local.tee 10
          select
          i64.const 1
          i64.shl
          i64.const -1
          i64.add
          call $_*strconv.decimal_.Assign
          local.get 14
          local.get 6
          i32.load
          i32.const -1
          i32.xor
          local.get 5
          i32.add
          local.get 10
          i32.const 1
          i32.xor
          i32.sub
          call $_*strconv.decimal_.Shift
          local.get 8
          i32.const 800
          i32.add
          local.set 9
          local.get 14
          local.get 11
          i32.load offset=804
          local.tee 6
          i32.sub
          local.set 15
          i32.const 0
          local.get 6
          i32.sub
          local.set 16
          local.get 8
          local.get 8
          i32.load offset=804
          local.get 6
          i32.sub
          local.tee 17
          i32.add
          local.set 18
          local.get 4
          i64.const 1
          i64.and
          local.tee 4
          i32.wrap_i64
          local.set 19
          local.get 8
          i32.load offset=800
          local.set 20
          i32.const 0
          local.set 21
          i32.const 0
          local.set 6
          loop  ;; label = @4
            local.get 17
            local.get 6
            i32.add
            local.tee 22
            local.get 20
            i32.ge_s
            br_if 1 (;@3;)
            i32.const 48
            local.set 10
            i32.const 48
            local.set 5
            block  ;; label = @5
              local.get 16
              local.get 6
              i32.add
              local.get 14
              i32.load offset=804
              local.tee 23
              i32.add
              local.tee 24
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              i32.const 48
              local.set 5
              local.get 24
              local.get 14
              i32.load offset=800
              i32.ge_s
              br_if 0 (;@5;)
              local.get 24
              i32.const 800
              i32.ge_u
              br_if 4 (;@1;)
              local.get 15
              local.get 6
              local.get 23
              i32.add
              i32.add
              i32.load8_u
              local.set 5
            end
            block  ;; label = @5
              local.get 22
              i32.const -1
              i32.le_s
              br_if 0 (;@5;)
              local.get 22
              i32.const 800
              i32.ge_u
              br_if 4 (;@1;)
              local.get 18
              local.get 6
              i32.add
              i32.load8_u
              local.set 10
            end
            i32.const 48
            local.set 25
            block  ;; label = @5
              local.get 6
              local.get 11
              i32.load offset=800
              local.tee 26
              i32.ge_s
              br_if 0 (;@5;)
              local.get 6
              i32.const 800
              i32.ge_u
              br_if 4 (;@1;)
              local.get 11
              local.get 6
              i32.add
              i32.load8_u
              local.set 25
            end
            block  ;; label = @5
              local.get 5
              i32.const 255
              i32.and
              local.get 10
              i32.const 255
              i32.and
              local.tee 27
              i32.ne
              local.tee 5
              local.get 19
              i32.or
              i32.const 1
              i32.eq
              br_if 0 (;@5;)
              local.get 24
              i32.const 1
              i32.add
              local.get 14
              i32.load offset=800
              i32.eq
              local.set 5
            end
            i32.const 2
            local.set 23
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 21
                        i32.const 255
                        i32.and
                        local.tee 28
                        br_if 0 (;@10;)
                        i32.const 1
                        local.set 24
                        local.get 10
                        i32.const 1
                        i32.add
                        i32.const 255
                        i32.and
                        local.get 25
                        i32.const 255
                        i32.and
                        i32.lt_u
                        br_if 1 (;@9;)
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 28
                          br_if 0 (;@11;)
                          i32.const 1
                          local.set 23
                          local.get 27
                          local.get 25
                          i32.const 255
                          i32.and
                          i32.ne
                          br_if 1 (;@10;)
                        end
                        i32.const 1
                        local.set 24
                        block  ;; label = @11
                          local.get 28
                          i32.const 1
                          i32.ne
                          br_if 0 (;@11;)
                          i32.const 2
                          local.set 23
                          local.get 27
                          i32.const 57
                          i32.ne
                          local.get 25
                          i32.const 255
                          i32.and
                          i32.const 48
                          i32.ne
                          i32.or
                          br_if 2 (;@9;)
                        end
                        local.get 21
                        local.set 23
                        local.get 28
                        i32.eqz
                        br_if 2 (;@8;)
                      end
                      i32.const 1
                      local.set 24
                      local.get 4
                      i64.eqz
                      br_if 0 (;@9;)
                      local.get 23
                      i32.const 255
                      i32.and
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 1
                      local.set 23
                      local.get 6
                      i32.const 1
                      i32.add
                      local.get 26
                      i32.lt_s
                      local.set 24
                    end
                    local.get 5
                    local.get 24
                    i32.and
                    i32.const 1
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 8
                    local.get 22
                    i32.const 1
                    i32.add
                    call $_*strconv.decimal_.Round
                    br 5 (;@3;)
                  end
                  i32.const 0
                  local.set 23
                  local.get 5
                  i32.eqz
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                local.get 5
                br_if 1 (;@5;)
                local.get 24
                i32.eqz
                br_if 0 (;@6;)
                local.get 8
                local.get 22
                i32.const 1
                i32.add
                call $_*strconv.decimal_.RoundUp
                br 3 (;@3;)
              end
              local.get 6
              i32.const 1
              i32.add
              local.set 6
              local.get 23
              local.set 21
              br 1 (;@4;)
            end
          end
          local.get 8
          local.get 22
          i32.const 1
          i32.add
          call $_*strconv.decimal_.RoundDown
        end
        local.get 9
        i32.load
        local.tee 6
        local.set 5
      end
      local.get 7
      local.get 1
      local.get 2
      i32.const 31
      i32.shr_u
      local.get 3
      local.get 8
      i32.const 800
      i32.const 800
      local.get 6
      local.get 8
      i32.load offset=804
      i32.const 0
      local.get 5
      call $strconv.formatDigits
      local.get 7
      i32.load offset=8
      local.set 6
      local.get 0
      local.get 7
      i32.load
      i32.store
      local.get 0
      local.get 6
      i32.store offset=8
      local.get 0
      local.get 7
      i32.load offset=4
      i32.store offset=4
      local.get 7
      i32.const 16
      i32.add
      global.set 0
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*strconv.decimal_.Assign (type 15) (param i32 i64)
    (local i32 i32 i64 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=8
    i32.const 0
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i64.eqz
            br_if 1 (;@3;)
            local.get 1
            i64.const 10
            i64.div_u
            local.set 4
            local.get 3
            i32.const 24
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const 8
            i32.add
            local.get 3
            i32.add
            local.get 4
            i64.const -10
            i64.mul
            local.get 1
            i64.add
            i32.wrap_i64
            i32.const 48
            i32.add
            i32.store8
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 4
            local.set 1
            br 0 (;@4;)
          end
        end
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 8
        i32.add
        i32.const -1
        i32.add
        local.set 5
        i32.const 0
        local.set 6
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 6
            i32.store offset=800
            local.get 3
            i32.const 0
            i32.le_s
            br_if 1 (;@3;)
            local.get 6
            i32.const 800
            i32.ge_u
            br_if 2 (;@2;)
            local.get 0
            local.get 6
            i32.add
            local.get 5
            local.get 3
            i32.add
            i32.load8_u
            i32.store8
            local.get 0
            i32.load offset=800
            i32.const 1
            i32.add
            local.set 6
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 6
        i32.store offset=804
        local.get 0
        call $strconv.trim
        local.get 2
        i32.const 32
        i32.add
        global.set 0
        return
      end
      call $runtime.lookupPanic
      unreachable
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*strconv.decimal_.Shift (type 2) (param i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=800
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const 29
            i32.lt_s
            br_if 1 (;@3;)
            local.get 0
            i32.const 28
            call $strconv.leftShift
            local.get 1
            i32.const -28
            i32.add
            local.set 1
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 1
        call $strconv.leftShift
        return
      end
      local.get 1
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.const -29
          i32.gt_s
          br_if 1 (;@2;)
          local.get 0
          i32.const 28
          call $strconv.rightShift
          local.get 1
          i32.const 28
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 0
      local.get 1
      i32.sub
      call $strconv.rightShift
      return
    end)
  (func $_*strconv.decimal_.Round (type 2) (param i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          br_if 0 (;@3;)
          call $runtime.nilPanic
          unreachable
        end
        local.get 0
        i32.load offset=800
        local.tee 2
        local.get 1
        i32.gt_s
        br_if 1 (;@1;)
      end
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 800
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.add
        local.tee 3
        i32.load8_u
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            i32.const 255
            i32.and
            i32.const 53
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            i32.load8_u offset=809
            br_if 3 (;@1;)
            local.get 1
            i32.const 0
            i32.le_s
            br_if 1 (;@3;)
            local.get 3
            i32.const -1
            i32.add
            i32.load8_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 4
          i32.const 255
          i32.and
          i32.const 52
          i32.gt_u
          br_if 2 (;@1;)
        end
        local.get 0
        local.get 1
        call $_*strconv.decimal_.RoundDown
        return
      end
      call $runtime.lookupPanic
      unreachable
    end
    local.get 0
    local.get 1
    call $_*strconv.decimal_.RoundUp)
  (func $_*strconv.decimal_.RoundUp (type 2) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const -1
          i32.le_s
          br_if 0 (;@3;)
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=800
          local.get 1
          i32.le_s
          br_if 0 (;@3;)
          block  ;; label = @4
            loop  ;; label = @5
              local.get 1
              i32.const 0
              i32.le_s
              br_if 1 (;@4;)
              local.get 1
              i32.const -1
              i32.add
              local.tee 2
              i32.const 800
              i32.ge_u
              br_if 4 (;@1;)
              local.get 0
              local.get 1
              i32.add
              local.set 3
              local.get 2
              local.set 1
              local.get 3
              i32.const -1
              i32.add
              i32.load8_u
              local.tee 3
              i32.const 56
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 0
            local.get 2
            i32.add
            local.get 3
            i32.const 1
            i32.add
            i32.store8
            local.get 0
            local.get 2
            i32.const 1
            i32.add
            i32.store offset=800
            return
          end
          local.get 0
          i32.const 1
          i32.store offset=800
          local.get 0
          i32.const 49
          i32.store8
          local.get 0
          local.get 0
          i32.load offset=804
          i32.const 1
          i32.add
          i32.store offset=804
        end
        return
      end
      call $runtime.nilPanic
      unreachable
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*strconv.decimal_.RoundDown (type 2) (param i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const -1
          i32.le_s
          br_if 0 (;@3;)
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=800
          local.get 1
          i32.gt_s
          br_if 2 (;@1;)
        end
        return
      end
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    local.get 1
    i32.store offset=800
    local.get 0
    call $strconv.trim)
  (func $strconv.formatDigits (type 16) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 9
    global.set 0
    local.get 7
    local.get 10
    i32.lt_s
    local.set 11
    i32.const 1
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 8
                  i32.const -1
                  i32.add
                  local.tee 13
                  i32.const -4
                  i32.lt_s
                  br_if 0 (;@7;)
                  local.get 13
                  i32.const 6
                  local.get 7
                  local.get 10
                  local.get 7
                  local.get 8
                  i32.ge_s
                  select
                  local.get 10
                  local.get 11
                  select
                  local.get 2
                  i32.const 1
                  i32.and
                  select
                  i32.lt_s
                  br_if 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 3
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 1
                  i32.const 45
                  i32.store8 offset=1
                  i32.const 2
                  local.set 12
                end
                block  ;; label = @7
                  local.get 7
                  br_if 0 (;@7;)
                  i32.const 48
                  local.set 8
                  br 3 (;@4;)
                end
                local.get 5
                i32.eqz
                br_if 1 (;@5;)
                local.get 4
                i32.load8_u
                local.set 8
                br 2 (;@4;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 3
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 45
                i32.store8 offset=1
                i32.const 2
                local.set 3
              end
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    i32.const 1
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 7
                    local.get 8
                    local.get 7
                    local.get 8
                    i32.lt_s
                    select
                    local.tee 2
                    local.get 6
                    i32.gt_u
                    br_if 5 (;@3;)
                    local.get 9
                    i32.const 200
                    i32.add
                    local.get 1
                    local.get 4
                    local.get 3
                    i32.const 68
                    local.get 2
                    call $runtime.sliceAppend
                    local.get 8
                    local.get 2
                    i32.sub
                    local.set 11
                    local.get 9
                    i32.load offset=208
                    local.set 2
                    local.get 9
                    i32.load offset=204
                    local.set 3
                    local.get 9
                    i32.load offset=200
                    local.set 1
                    br 1 (;@7;)
                  end
                  local.get 9
                  i32.const 48
                  i32.store offset=240
                  local.get 9
                  i32.const 216
                  i32.add
                  local.get 1
                  local.get 9
                  i32.const 240
                  i32.add
                  local.get 3
                  i32.const 68
                  i32.const 1
                  call $runtime.sliceAppend
                  local.get 9
                  i32.load offset=224
                  local.set 2
                  local.get 9
                  i32.load offset=220
                  local.set 3
                  local.get 9
                  i32.load offset=216
                  local.set 1
                  br 1 (;@6;)
                end
                loop  ;; label = @7
                  local.get 11
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 9
                  i32.const 48
                  i32.store offset=252
                  local.get 9
                  i32.const 184
                  i32.add
                  local.get 1
                  local.get 9
                  i32.const 252
                  i32.add
                  local.get 3
                  local.get 2
                  i32.const 1
                  call $runtime.sliceAppend
                  local.get 11
                  i32.const -1
                  i32.add
                  local.set 11
                  local.get 9
                  i32.load offset=192
                  local.set 2
                  local.get 9
                  i32.load offset=188
                  local.set 3
                  local.get 9
                  i32.load offset=184
                  local.set 1
                  br 0 (;@7;)
                end
              end
              block  ;; label = @6
                local.get 7
                local.get 10
                local.get 8
                local.get 10
                i32.lt_s
                select
                local.get 8
                i32.sub
                local.tee 11
                i32.const 1
                i32.lt_s
                br_if 0 (;@6;)
                local.get 11
                i32.const 0
                local.get 11
                i32.const 0
                i32.gt_s
                select
                local.set 11
                local.get 9
                i32.const 46
                i32.store offset=248
                local.get 9
                i32.const 168
                i32.add
                local.get 1
                local.get 9
                i32.const 248
                i32.add
                local.get 3
                local.get 2
                i32.const 1
                call $runtime.sliceAppend
                local.get 9
                i32.load offset=176
                local.set 2
                local.get 9
                i32.load offset=172
                local.set 3
                local.get 9
                i32.load offset=168
                local.set 1
                loop  ;; label = @7
                  local.get 11
                  i32.eqz
                  br_if 1 (;@6;)
                  i32.const 48
                  local.set 10
                  block  ;; label = @8
                    local.get 8
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 8
                    local.get 7
                    i32.ge_s
                    br_if 0 (;@8;)
                    local.get 8
                    local.get 5
                    i32.ge_u
                    br_if 3 (;@5;)
                    local.get 4
                    local.get 8
                    i32.add
                    i32.load8_u
                    local.set 10
                  end
                  local.get 9
                  i32.const 0
                  i32.store offset=244
                  local.get 9
                  local.get 10
                  i32.store8 offset=244
                  local.get 9
                  i32.const 152
                  i32.add
                  local.get 1
                  local.get 9
                  i32.const 244
                  i32.add
                  local.get 3
                  local.get 2
                  i32.const 1
                  call $runtime.sliceAppend
                  local.get 11
                  i32.const -1
                  i32.add
                  local.set 11
                  local.get 8
                  i32.const 1
                  i32.add
                  local.set 8
                  local.get 9
                  i32.load offset=160
                  local.set 2
                  local.get 9
                  i32.load offset=156
                  local.set 3
                  local.get 9
                  i32.load offset=152
                  local.set 1
                  br 0 (;@7;)
                end
              end
              local.get 0
              local.get 2
              i32.store offset=8
              local.get 0
              local.get 3
              i32.store offset=4
              local.get 0
              local.get 1
              i32.store
              local.get 9
              i32.const 256
              i32.add
              global.set 0
              return
            end
            call $runtime.lookupPanic
            unreachable
          end
          local.get 9
          i32.const 0
          i32.store offset=252
          local.get 9
          local.get 8
          i32.store8 offset=252
          local.get 9
          i32.const 136
          i32.add
          local.get 1
          local.get 9
          i32.const 252
          i32.add
          local.get 12
          i32.const 68
          i32.const 1
          call $runtime.sliceAppend
          local.get 9
          i32.load offset=144
          local.set 1
          local.get 9
          i32.load offset=140
          local.set 3
          local.get 9
          i32.load offset=136
          local.set 2
          local.get 7
          local.get 10
          local.get 11
          select
          local.tee 8
          i32.const -1
          i32.add
          local.tee 11
          i32.const 1
          i32.lt_s
          br_if 2 (;@1;)
          local.get 9
          i32.const 46
          i32.store offset=248
          local.get 9
          i32.const 120
          i32.add
          local.get 2
          local.get 9
          i32.const 248
          i32.add
          local.get 3
          local.get 1
          i32.const 1
          call $runtime.sliceAppend
          local.get 9
          i32.load offset=128
          local.set 1
          local.get 9
          i32.load offset=124
          local.set 3
          local.get 9
          i32.load offset=120
          local.set 2
          block  ;; label = @4
            local.get 8
            i32.const 1
            i32.gt_s
            br_if 0 (;@4;)
            i32.const 1
            local.set 8
            br 2 (;@2;)
          end
          local.get 8
          local.get 6
          i32.gt_u
          br_if 0 (;@3;)
          local.get 9
          i32.const 104
          i32.add
          local.get 2
          local.get 4
          i32.const 1
          i32.add
          local.get 3
          local.get 1
          local.get 11
          call $runtime.sliceAppend
          local.get 9
          i32.load offset=112
          local.set 1
          local.get 9
          i32.load offset=108
          local.set 3
          local.get 9
          i32.load offset=104
          local.set 2
          br 1 (;@2;)
        end
        call $runtime.slicePanic
        unreachable
      end
      loop  ;; label = @2
        local.get 8
        local.get 11
        i32.gt_s
        br_if 1 (;@1;)
        local.get 9
        i32.const 48
        i32.store offset=244
        local.get 9
        i32.const 88
        i32.add
        local.get 2
        local.get 9
        i32.const 244
        i32.add
        local.get 3
        local.get 1
        i32.const 1
        call $runtime.sliceAppend
        local.get 8
        i32.const 1
        i32.add
        local.set 8
        local.get 9
        i32.load offset=96
        local.set 1
        local.get 9
        i32.load offset=92
        local.set 3
        local.get 9
        i32.load offset=88
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 9
    i32.const 101
    i32.store offset=240
    local.get 9
    i32.const 72
    i32.add
    local.get 2
    local.get 9
    i32.const 240
    i32.add
    local.get 3
    local.get 1
    i32.const 1
    call $runtime.sliceAppend
    local.get 9
    i32.const 0
    i32.store offset=236
    local.get 9
    i32.const 45
    i32.const 43
    local.get 13
    i32.const 0
    local.get 7
    select
    local.tee 8
    i32.const 0
    i32.lt_s
    select
    i32.store8 offset=236
    local.get 9
    i32.const 56
    i32.add
    local.get 9
    i32.load offset=72
    local.get 9
    i32.const 236
    i32.add
    local.get 9
    i32.load offset=76
    local.get 9
    i32.load offset=80
    i32.const 1
    call $runtime.sliceAppend
    local.get 9
    i32.load offset=64
    local.set 1
    local.get 9
    i32.load offset=60
    local.set 3
    local.get 9
    i32.load offset=56
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 8
        local.get 8
        i32.const 31
        i32.shr_s
        local.tee 11
        i32.add
        local.get 11
        i32.xor
        local.tee 8
        i32.const 9
        i32.gt_s
        br_if 0 (;@2;)
        local.get 9
        i32.const 48
        i32.store offset=232
        local.get 9
        local.get 8
        i32.const 48
        i32.add
        i32.store8 offset=233
        local.get 9
        i32.const 8
        i32.add
        local.get 2
        local.get 9
        i32.const 232
        i32.add
        local.get 3
        local.get 1
        i32.const 2
        call $runtime.sliceAppend
        local.get 9
        i32.load offset=16
        local.set 8
        local.get 9
        i32.load offset=12
        local.set 1
        local.get 9
        i32.load offset=8
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 8
        i32.const 99
        i32.gt_s
        br_if 0 (;@2;)
        local.get 9
        i32.const 0
        i32.store offset=232
        local.get 9
        local.get 8
        i32.const 255
        i32.and
        i32.const 10
        i32.div_u
        local.tee 11
        i32.const 48
        i32.add
        i32.store8 offset=232
        local.get 9
        local.get 8
        local.get 11
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8 offset=233
        local.get 9
        i32.const 24
        i32.add
        local.get 2
        local.get 9
        i32.const 232
        i32.add
        local.get 3
        local.get 1
        i32.const 2
        call $runtime.sliceAppend
        local.get 9
        i32.load offset=32
        local.set 8
        local.get 9
        i32.load offset=28
        local.set 1
        local.get 9
        i32.load offset=24
        local.set 3
        br 1 (;@1;)
      end
      local.get 9
      i32.const 0
      i32.store offset=232
      local.get 9
      local.get 8
      i32.const 100
      i32.div_u
      i32.const 48
      i32.add
      i32.store8 offset=232
      local.get 9
      local.get 8
      local.get 8
      i32.const 10
      i32.div_u
      local.tee 11
      i32.const 10
      i32.mul
      i32.sub
      i32.const 48
      i32.or
      i32.store8 offset=234
      local.get 9
      local.get 11
      i32.const 255
      i32.and
      i32.const 10
      i32.rem_u
      i32.const 48
      i32.or
      i32.store8 offset=233
      local.get 9
      i32.const 40
      i32.add
      local.get 2
      local.get 9
      i32.const 232
      i32.add
      local.get 3
      local.get 1
      i32.const 3
      call $runtime.sliceAppend
      local.get 9
      i32.load offset=48
      local.set 8
      local.get 9
      i32.load offset=44
      local.set 1
      local.get 9
      i32.load offset=40
      local.set 3
    end
    local.get 0
    local.get 8
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 9
    i32.const 256
    i32.add
    global.set 0)
  (func $strconv.trim (type 12) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const -1
        i32.add
        local.set 1
        local.get 0
        i32.load offset=800
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              i32.const 0
              i32.le_s
              br_if 1 (;@4;)
              local.get 2
              i32.const -1
              i32.add
              local.tee 3
              i32.const 800
              i32.ge_u
              br_if 4 (;@1;)
              local.get 1
              local.get 2
              i32.add
              i32.load8_u
              i32.const 48
              i32.ne
              br_if 2 (;@3;)
              local.get 0
              local.get 3
              i32.store offset=800
              local.get 3
              local.set 2
              br 0 (;@5;)
            end
          end
          local.get 2
          br_if 0 (;@3;)
          local.get 0
          i32.const 0
          i32.store offset=804
        end
        return
      end
      call $runtime.nilPanic
      unreachable
    end
    call $runtime.lookupPanic
    unreachable)
  (func $strconv.leftShift (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=800
          local.tee 2
          i32.const 801
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 12
          i32.mul
          i32.const 70532
          i32.add
          i32.load
          local.set 3
          i32.const 0
          local.set 4
          local.get 1
          i32.const 12
          i32.mul
          local.tee 5
          i32.const 70540
          i32.add
          i32.load
          local.tee 6
          i32.const 0
          local.get 6
          i32.const 0
          i32.gt_s
          select
          local.set 7
          local.get 5
          i32.const 70536
          i32.add
          i32.load
          local.set 8
          i32.const 0
          local.set 5
          block  ;; label = @4
            loop  ;; label = @5
              local.get 7
              local.get 5
              i32.eq
              br_if 1 (;@4;)
              block  ;; label = @6
                local.get 2
                local.get 5
                i32.ne
                br_if 0 (;@6;)
                i32.const -1
                local.set 4
                br 2 (;@4;)
              end
              local.get 6
              local.get 5
              i32.eq
              br_if 4 (;@1;)
              local.get 0
              local.get 5
              i32.add
              local.set 9
              local.get 8
              local.get 5
              i32.add
              local.set 10
              local.get 5
              i32.const 1
              i32.add
              local.set 5
              local.get 9
              i32.load8_u
              local.tee 9
              i32.const 255
              i32.and
              local.get 10
              i32.load8_u
              local.tee 10
              i32.eq
              br_if 0 (;@5;)
            end
            i32.const -1
            i32.const 0
            local.get 9
            i32.const 255
            i32.and
            local.get 10
            i32.lt_u
            select
            local.set 4
          end
          local.get 2
          i32.const -1
          i32.add
          local.set 10
          local.get 4
          local.get 3
          i32.add
          local.tee 6
          local.get 2
          i32.add
          i32.const -1
          i32.add
          local.set 5
          i32.const 0
          local.set 9
          br 1 (;@2;)
        end
        call $runtime.slicePanic
        unreachable
      end
      loop  ;; label = @2
        block  ;; label = @3
          local.get 10
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 9
                i32.eqz
                br_if 0 (;@6;)
                local.get 9
                i32.const 10
                i32.div_u
                local.tee 10
                i32.const -10
                i32.mul
                local.get 9
                i32.add
                local.set 9
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.const 800
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 9
                    br_if 1 (;@7;)
                    br 3 (;@5;)
                  end
                  local.get 5
                  i32.const 800
                  i32.ge_u
                  br_if 6 (;@1;)
                  local.get 0
                  local.get 5
                  i32.add
                  local.get 9
                  i32.const 48
                  i32.add
                  i32.store8
                  br 2 (;@5;)
                end
                local.get 0
                i32.const 1
                i32.store8 offset=809
                br 1 (;@5;)
              end
              local.get 0
              local.get 0
              i32.load offset=804
              local.get 6
              i32.add
              i32.store offset=804
              local.get 0
              local.get 0
              i32.load offset=800
              local.get 6
              i32.add
              local.tee 5
              i32.const 800
              local.get 5
              i32.const 800
              i32.lt_s
              select
              i32.store offset=800
              local.get 0
              call $strconv.trim
              return
            end
            local.get 5
            i32.const -1
            i32.add
            local.set 5
            local.get 10
            local.set 9
            br 0 (;@4;)
          end
        end
        local.get 10
        i32.const 800
        i32.ge_u
        br_if 1 (;@1;)
        local.get 0
        local.get 10
        i32.add
        i32.load8_u
        i32.const -48
        i32.add
        local.get 1
        i32.shl
        local.get 9
        i32.add
        local.tee 9
        local.get 9
        i32.const 10
        i32.div_u
        local.tee 9
        i32.const -10
        i32.mul
        i32.add
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const 799
            i32.gt_s
            br_if 0 (;@4;)
            local.get 5
            i32.const 800
            i32.ge_u
            br_if 3 (;@1;)
            local.get 0
            local.get 5
            i32.add
            local.get 2
            i32.const 48
            i32.add
            i32.store8
            br 1 (;@3;)
          end
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 1
          i32.store8 offset=809
        end
        local.get 10
        i32.const -1
        i32.add
        local.set 10
        local.get 5
        i32.const -1
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    call $runtime.lookupPanic
    unreachable)
  (func $strconv.rightShift (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              local.get 1
              i32.shr_u
              br_if 1 (;@4;)
              local.get 0
              i32.eqz
              br_if 2 (;@3;)
              block  ;; label = @6
                local.get 2
                local.get 0
                i32.load offset=800
                i32.lt_s
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 3
                  i32.eqz
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 3
                    local.get 1
                    i32.shr_u
                    br_if 4 (;@4;)
                    local.get 2
                    i32.const 1
                    i32.add
                    local.set 2
                    local.get 3
                    i32.const 10
                    i32.mul
                    local.set 3
                    br 0 (;@8;)
                  end
                end
                local.get 0
                i32.const 0
                i32.store offset=800
                return
              end
              local.get 2
              i32.const 800
              i32.eq
              br_if 4 (;@1;)
              local.get 3
              i32.const 10
              i32.mul
              local.get 0
              local.get 2
              i32.add
              i32.load8_u
              i32.add
              i32.const -48
              i32.add
              local.set 3
              local.get 2
              i32.const 1
              i32.add
              local.set 2
              br 0 (;@5;)
            end
          end
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.load offset=804
          local.get 2
          i32.sub
          i32.const 1
          i32.add
          i32.store offset=804
          i32.const 0
          local.set 4
          i32.const 0
          i32.const 800
          local.get 2
          i32.sub
          local.tee 5
          local.get 5
          i32.const 800
          i32.gt_u
          select
          local.set 6
          local.get 0
          local.get 2
          i32.add
          local.set 7
          i32.const -1
          local.get 1
          i32.shl
          i32.const -1
          i32.xor
          local.set 5
          br 1 (;@2;)
        end
        call $runtime.nilPanic
        unreachable
      end
      loop  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.get 4
          i32.add
          local.get 0
          i32.load offset=800
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              local.get 1
              i32.shr_u
              local.set 2
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.const 800
                  i32.lt_s
                  br_if 0 (;@7;)
                  local.get 2
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 0
                  i32.const 1
                  i32.store8 offset=809
                  br 1 (;@6;)
                end
                local.get 4
                i32.const 800
                i32.ge_u
                br_if 5 (;@1;)
                local.get 0
                local.get 4
                i32.add
                local.get 2
                i32.const 48
                i32.add
                i32.store8
                local.get 4
                i32.const 1
                i32.add
                local.set 4
              end
              local.get 3
              local.get 5
              i32.and
              i32.const 10
              i32.mul
              local.set 3
              br 0 (;@5;)
            end
          end
          local.get 0
          local.get 4
          i32.store offset=800
          local.get 0
          call $strconv.trim
          return
        end
        local.get 6
        local.get 4
        i32.eq
        br_if 1 (;@1;)
        local.get 4
        i32.const 800
        i32.eq
        br_if 1 (;@1;)
        local.get 7
        local.get 4
        i32.add
        i32.load8_u
        local.set 8
        local.get 0
        local.get 4
        i32.add
        local.get 3
        local.get 1
        i32.shr_u
        i32.const 48
        i32.add
        i32.store8
        local.get 8
        local.get 3
        local.get 5
        i32.and
        i32.const 10
        i32.mul
        i32.add
        i32.const -48
        i32.add
        local.set 3
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*strconv.extFloat_.frexp10 (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=8
      local.tee 2
      i32.const 64
      i32.add
      local.set 3
      i32.const -46
      local.get 2
      i32.sub
      i32.const 28
      i32.mul
      i32.const 93
      i32.div_s
      i32.const 348
      i32.add
      i32.const 8
      i32.div_s
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 86
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 1
            local.set 4
            local.get 3
            local.get 2
            i32.const 4
            i32.shl
            i32.const 66776
            i32.add
            i32.load
            i32.add
            local.tee 5
            i32.const -60
            i32.lt_s
            br_if 1 (;@3;)
            i32.const -1
            local.set 4
            local.get 5
            i32.const -32
            i32.gt_s
            br_if 1 (;@3;)
            local.get 1
            local.get 2
            i32.const 4
            i32.shl
            local.tee 4
            i32.const 66768
            i32.add
            i64.load
            local.get 4
            i32.const 66776
            i32.add
            i32.load
            call $_*strconv.extFloat_.Multiply
            local.get 0
            local.get 2
            i32.store offset=4
            local.get 0
            i32.const 348
            local.get 2
            i32.const 3
            i32.shl
            i32.sub
            i32.store
            return
          end
          call $runtime.lookupPanic
          unreachable
        end
        local.get 2
        local.get 4
        i32.add
        local.set 2
        br 0 (;@2;)
      end
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*strconv.extFloat_.Multiply (type 17) (param i32 i64 i32)
    (local i64 i64 i64)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    local.get 2
    local.get 0
    i32.load offset=8
    i32.add
    i32.const 64
    i32.add
    i32.store offset=8
    local.get 0
    local.get 0
    i64.load
    local.tee 3
    local.get 1
    i64.mul
    i64.const 63
    i64.shr_u
    local.get 3
    i64.const 32
    i64.shr_u
    local.tee 4
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 5
    i64.mul
    i64.add
    local.get 3
    i64.const 4294967295
    i64.and
    local.tee 3
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 1
    i64.mul
    i64.const 32
    i64.shr_u
    local.get 4
    local.get 1
    i64.mul
    i64.add
    local.tee 1
    i64.const 32
    i64.shr_u
    i64.add
    local.get 1
    i64.const 4294967295
    i64.and
    local.get 3
    local.get 5
    i64.mul
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    i64.store)
  (func $_*os.File_.Write (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=4
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load
          local.tee 6
          i32.const 208
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          i32.const 11237
          i32.ne
          br_if 2 (;@1;)
          local.get 4
          local.get 5
          local.get 2
          local.get 3
          call $_*os.File_.Write
          local.get 4
          i32.load offset=8
          local.set 6
          local.get 4
          i32.load offset=4
          local.set 2
          local.get 4
          i32.load
          local.set 3
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 5
          i32.const -1
          i32.add
          i32.const 255
          i32.and
          i32.const 1
          i32.le_u
          br_if 0 (;@3;)
          i32.const 73616
          local.set 6
          i32.const 10213
          local.set 2
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        i32.const 0
        local.set 5
        local.get 3
        i32.const 0
        local.get 3
        i32.const 0
        i32.gt_s
        select
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 6
              local.get 5
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              local.get 5
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              local.get 5
              i32.add
              i32.load8_u
              call $runtime.putchar
              local.get 5
              i32.const 1
              i32.add
              local.set 5
              br 0 (;@5;)
            end
          end
          i32.const 0
          local.set 2
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        call $runtime.lookupPanic
        unreachable
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          local.get 6
          local.set 5
          br 1 (;@2;)
        end
        i32.const 24
        call $runtime.alloc
        local.tee 5
        local.get 6
        i32.store offset=20
        local.get 5
        local.get 2
        i32.store offset=16
        local.get 5
        i32.const 5
        i32.store offset=4
        local.get 5
        i32.const 70521
        i32.store
        local.get 5
        local.get 1
        i64.load offset=8 align=4
        i64.store offset=8 align=4
        i32.const 3045
        local.set 2
      end
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
      local.get 0
      local.get 5
      i32.store offset=8
      local.get 4
      i32.const 16
      i32.add
      global.set 0
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*fmt.pp_.fmt0x64 (type 17) (param i32 i64 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    i32.const 40
    i32.add
    local.tee 3
    i32.load8_u
    local.set 4
    local.get 3
    local.get 2
    i32.const 1
    i32.and
    i32.store8
    local.get 0
    i32.const 32
    i32.add
    local.get 1
    i32.const 16
    i32.const 0
    i32.const 70304
    call $_*fmt.fmt_.fmtInteger
    local.get 3
    local.get 4
    i32.const 1
    i32.and
    i32.store8)
  (func $_*fmt.fmt_.fmtInteger (type 18) (param i32 i64 i32 i32 i32)
    (local i64 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    i64.const 0
    local.get 1
    i64.sub
    local.set 5
    local.get 1
    i64.const 0
    i64.lt_s
    local.get 3
    i32.and
    local.set 6
    local.get 0
    i32.const 24
    i32.add
    local.set 7
    i32.const 68
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        br_if 0 (;@2;)
        local.get 0
        i32.const 5
        i32.add
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      i32.load offset=16
      local.get 0
      i32.load offset=20
      i32.add
      i32.const 3
      i32.add
      local.tee 3
      i32.const 69
      i32.lt_s
      br_if 0 (;@1;)
      local.get 3
      call $runtime.alloc
      local.set 7
      local.get 3
      local.set 8
    end
    local.get 5
    local.get 1
    local.get 6
    select
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 5
        i32.add
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=20
        local.set 9
        local.get 1
        i64.const 0
        i64.ne
        br_if 1 (;@1;)
        local.get 9
        br_if 1 (;@1;)
        local.get 0
        i32.const 10
        i32.add
        local.tee 3
        i32.load8_u
        local.set 8
        local.get 3
        i32.const 0
        i32.store8
        local.get 0
        local.get 0
        i32.load offset=16
        call $_*fmt.fmt_.writePadding
        local.get 3
        local.get 8
        i32.const 1
        i32.and
        i32.store8
        return
      end
      i32.const 0
      local.set 9
      local.get 0
      i32.const 10
      i32.add
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=4
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.set 9
      block  ;; label = @2
        local.get 6
        br_if 0 (;@2;)
        local.get 0
        i32.const 7
        i32.add
        i32.load8_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 9
        i32.add
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 9
      i32.const -1
      i32.add
      local.set 9
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        i32.const -2
                        i32.add
                        i32.const 31
                        i32.rotl
                        br_table 1 (;@9;) 0 (;@10;) 0 (;@10;) 2 (;@8;) 7 (;@3;) 0 (;@10;) 0 (;@10;) 3 (;@7;) 0 (;@10;)
                      end
                      i32.const 34
                      i32.const 70432
                      call $runtime._panic
                      unreachable
                    end
                    local.get 8
                    i32.const -1
                    i32.add
                    local.set 3
                    loop  ;; label = @9
                      local.get 1
                      i64.const 2
                      i64.lt_u
                      br_if 3 (;@6;)
                      local.get 3
                      local.get 8
                      i32.ge_u
                      br_if 8 (;@1;)
                      local.get 7
                      local.get 3
                      i32.add
                      local.get 1
                      i32.wrap_i64
                      i32.const 1
                      i32.and
                      i32.const 48
                      i32.or
                      i32.store8
                      local.get 3
                      i32.const -1
                      i32.add
                      local.set 3
                      local.get 1
                      i64.const 1
                      i64.shr_u
                      local.set 1
                      br 0 (;@9;)
                    end
                  end
                  local.get 8
                  i32.const -1
                  i32.add
                  local.set 3
                  loop  ;; label = @8
                    local.get 1
                    i64.const 8
                    i64.lt_u
                    br_if 3 (;@5;)
                    local.get 3
                    local.get 8
                    i32.ge_u
                    br_if 7 (;@1;)
                    local.get 7
                    local.get 3
                    i32.add
                    local.get 1
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    i32.const 48
                    i32.or
                    i32.store8
                    local.get 3
                    i32.const -1
                    i32.add
                    local.set 3
                    local.get 1
                    i64.const 3
                    i64.shr_u
                    local.set 1
                    br 0 (;@8;)
                  end
                end
                local.get 8
                i32.const -1
                i32.add
                local.set 3
                loop  ;; label = @7
                  local.get 1
                  i64.const 16
                  i64.lt_u
                  br_if 3 (;@4;)
                  local.get 3
                  local.get 8
                  i32.ge_u
                  br_if 6 (;@1;)
                  local.get 7
                  local.get 3
                  i32.add
                  local.get 4
                  local.get 1
                  i32.wrap_i64
                  i32.const 15
                  i32.and
                  i32.add
                  i32.load8_u
                  i32.store8
                  local.get 3
                  i32.const -1
                  i32.add
                  local.set 3
                  local.get 1
                  i64.const 4
                  i64.shr_u
                  local.set 1
                  br 0 (;@7;)
                end
              end
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              br 3 (;@2;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            br 2 (;@2;)
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          br 1 (;@2;)
        end
        local.get 8
        i32.const -1
        i32.add
        local.set 3
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i64.const 10
              i64.lt_u
              br_if 0 (;@5;)
              local.get 1
              i64.const 10
              i64.div_u
              local.set 5
              local.get 3
              local.get 8
              i32.lt_u
              br_if 1 (;@4;)
              br 4 (;@1;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            br 2 (;@2;)
          end
          local.get 7
          local.get 3
          i32.add
          local.get 1
          local.get 5
          i64.const -10
          i64.mul
          i64.add
          i64.const 48
          i64.add
          i64.store8
          local.get 3
          i32.const -1
          i32.add
          local.set 3
          local.get 5
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.const -1
      i32.add
      local.tee 10
      local.get 8
      i32.ge_u
      br_if 0 (;@1;)
      local.get 7
      local.get 10
      i32.add
      local.get 4
      local.get 1
      i32.wrap_i64
      i32.add
      i32.load8_u
      local.tee 11
      i32.store8
      i32.const 1
      local.get 3
      i32.sub
      local.set 10
      local.get 3
      i32.const -3
      i32.add
      local.set 3
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.const 2
          i32.add
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 9
          local.get 8
          local.get 10
          i32.add
          i32.le_s
          br_if 1 (;@2;)
          local.get 3
          i32.const 1
          i32.add
          local.get 8
          i32.ge_u
          br_if 2 (;@1;)
          i32.const 48
          local.set 11
          local.get 7
          local.get 3
          i32.add
          i32.const 1
          i32.add
          i32.const 48
          i32.store8
          local.get 10
          i32.const 1
          i32.add
          local.set 10
          local.get 3
          i32.const -1
          i32.add
          local.set 3
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.const 2
      i32.add
      local.set 10
      block  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 2
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 8
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.const 16
            i32.ne
            br_if 2 (;@2;)
            local.get 3
            i32.const 1
            i32.add
            local.get 8
            i32.ge_u
            br_if 3 (;@1;)
            local.get 7
            local.get 3
            i32.add
            local.tee 10
            i32.const 1
            i32.add
            local.get 4
            i32.load8_u offset=16
            i32.store8
            local.get 3
            local.get 8
            i32.ge_u
            br_if 3 (;@1;)
            local.get 10
            i32.const 48
            i32.store8
            local.get 3
            local.set 10
            br 2 (;@2;)
          end
          local.get 3
          i32.const 1
          i32.add
          local.get 8
          i32.ge_u
          br_if 2 (;@1;)
          local.get 7
          local.get 3
          i32.add
          local.tee 10
          i32.const 1
          i32.add
          i32.const 98
          i32.store8
          local.get 3
          local.get 8
          i32.ge_u
          br_if 2 (;@1;)
          local.get 10
          i32.const 48
          i32.store8
          local.get 3
          local.set 10
          br 1 (;@2;)
        end
        local.get 8
        local.get 10
        i32.le_u
        br_if 1 (;@1;)
        local.get 11
        i32.const 255
        i32.and
        i32.const 48
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        i32.const 1
        i32.add
        local.tee 10
        local.get 8
        i32.ge_u
        br_if 1 (;@1;)
        local.get 7
        local.get 3
        i32.add
        i32.const 1
        i32.add
        i32.const 48
        i32.store8
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            i32.const 45
            local.set 3
            local.get 10
            i32.const -1
            i32.add
            local.tee 10
            local.get 8
            i32.ge_u
            br_if 3 (;@1;)
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 0
            i32.const 7
            i32.add
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            i32.const 43
            local.set 3
            local.get 10
            i32.const -1
            i32.add
            local.tee 10
            local.get 8
            i32.ge_u
            br_if 3 (;@1;)
            br 1 (;@3;)
          end
          local.get 0
          i32.const 9
          i32.add
          i32.load8_u
          i32.eqz
          br_if 1 (;@2;)
          i32.const 32
          local.set 3
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          local.get 8
          i32.ge_u
          br_if 2 (;@1;)
        end
        local.get 7
        local.get 10
        i32.add
        local.get 3
        i32.store8
      end
      local.get 0
      i32.const 10
      i32.add
      local.tee 3
      i32.load8_u
      local.set 9
      local.get 3
      i32.const 0
      i32.store8
      block  ;; label = @2
        local.get 8
        local.get 8
        i32.gt_u
        br_if 0 (;@2;)
        local.get 8
        local.get 10
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 7
        local.get 10
        i32.add
        local.get 8
        local.get 10
        i32.sub
        call $_*fmt.fmt_.pad
        local.get 0
        local.get 9
        i32.const 1
        i32.and
        i32.store8 offset=10
        return
      end
      call $runtime.slicePanic
      unreachable
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*fmt.pp_.fmtBool (type 2) (param i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.add
      local.set 0
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 70512
        i32.const 4
        call $_*fmt.fmt_.padString
        return
      end
      local.get 0
      i32.const 70516
      i32.const 5
      call $_*fmt.fmt_.padString
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*fmt.fmt_.padString (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=16
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      local.get 2
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 2
                      i32.ge_u
                      br_if 7 (;@2;)
                      local.get 1
                      local.get 4
                      i32.add
                      i32.load8_s
                      local.tee 5
                      i32.const -1
                      i32.gt_s
                      br_if 3 (;@6;)
                      local.get 5
                      i32.const 255
                      i32.and
                      local.tee 6
                      i32.const 65536
                      i32.add
                      i32.load8_u
                      local.tee 5
                      i32.const 241
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 4
                      local.get 5
                      i32.const 7
                      i32.and
                      local.tee 7
                      i32.add
                      local.get 2
                      i32.gt_s
                      br_if 3 (;@6;)
                      local.get 4
                      i32.const 1
                      i32.add
                      local.tee 8
                      local.get 2
                      i32.ge_u
                      br_if 7 (;@2;)
                      local.get 1
                      local.get 8
                      i32.add
                      i32.load8_u
                      local.tee 8
                      local.get 5
                      i32.const 4
                      i32.shr_u
                      i32.const 1
                      i32.shl
                      local.tee 5
                      i32.const 65792
                      i32.add
                      i32.load8_u
                      i32.lt_u
                      br_if 1 (;@8;)
                      local.get 5
                      i32.const 65793
                      i32.add
                      i32.load8_u
                      i32.const 255
                      i32.and
                      local.get 8
                      i32.lt_u
                      br_if 1 (;@8;)
                      i32.const 2
                      local.set 5
                      local.get 6
                      i32.const -194
                      i32.add
                      i32.const 30
                      i32.lt_u
                      br_if 2 (;@7;)
                      local.get 4
                      i32.const 2
                      i32.add
                      local.tee 5
                      local.get 2
                      i32.ge_u
                      br_if 7 (;@2;)
                      local.get 1
                      local.get 5
                      i32.add
                      i32.load8_s
                      local.tee 8
                      i32.const -1
                      i32.gt_s
                      br_if 1 (;@8;)
                      i32.const 1
                      local.set 5
                      local.get 8
                      i32.const 255
                      i32.and
                      i32.const 191
                      i32.gt_u
                      br_if 2 (;@7;)
                      i32.const 3
                      local.set 5
                      local.get 6
                      i32.const 240
                      i32.and
                      i32.const 224
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 4
                      i32.const 3
                      i32.add
                      local.tee 5
                      local.get 2
                      i32.ge_u
                      br_if 7 (;@2;)
                      i32.const 1
                      i32.const 1
                      local.get 7
                      local.get 1
                      local.get 5
                      i32.add
                      i32.load8_u
                      local.tee 5
                      i32.const 191
                      i32.gt_u
                      select
                      local.get 5
                      i32.const 24
                      i32.shl
                      i32.const 24
                      i32.shr_s
                      i32.const -1
                      i32.gt_s
                      select
                      local.set 5
                      br 2 (;@7;)
                    end
                    local.get 0
                    i32.const 6
                    i32.add
                    i32.load8_u
                    i32.eqz
                    br_if 7 (;@1;)
                    local.get 0
                    i32.load
                    local.get 1
                    local.get 2
                    call $_*fmt.buffer_.writeString
                    local.get 0
                    local.get 3
                    call $_*fmt.fmt_.writePadding
                    return
                  end
                  i32.const 1
                  local.set 5
                end
                local.get 5
                local.get 4
                i32.add
                local.set 4
                br 1 (;@5;)
              end
              local.get 4
              i32.const 1
              i32.add
              local.set 4
            end
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            br 0 (;@4;)
          end
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        call $_*fmt.buffer_.writeString
        return
      end
      call $runtime.lookupPanic
      unreachable
    end
    local.get 0
    local.get 3
    call $_*fmt.fmt_.writePadding
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call $_*fmt.buffer_.writeString)
  (func $_*fmt.pp_.fmtComplex (type 19) (param i32 f64 f64 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    i32.const 39
    i32.add
    local.tee 4
    i32.load8_u
    local.set 5
    local.get 0
    i32.const 40
    call $_*fmt.buffer_.writeByte
    local.get 0
    local.get 1
    local.get 3
    i32.const 2
    i32.div_s
    local.tee 3
    call $_*fmt.pp_.fmtFloat
    local.get 4
    i32.const 1
    i32.store8
    local.get 0
    local.get 2
    local.get 3
    call $_*fmt.pp_.fmtFloat
    local.get 0
    i32.const 70287
    i32.const 2
    call $_*fmt.buffer_.writeString
    local.get 4
    local.get 5
    i32.const 1
    i32.and
    i32.store8)
  (func $_*fmt.buffer_.writeByte (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store8 offset=12
    local.get 2
    local.get 0
    i32.load
    local.get 2
    i32.const 12
    i32.add
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    i32.const 1
    call $runtime.sliceAppend
    local.get 2
    i32.load offset=8
    local.set 1
    local.get 0
    local.get 2
    i64.load
    i64.store align=4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $_*fmt.pp_.fmtFloat (type 20) (param i32 f64 i32)
    (local i32 i32 i64 i32 i32 i64 i32 i64 i64 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i64 i32 i64)
    global.get 0
    i32.const 272
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.eqz
              br_if 0 (;@5;)
              i32.const -1
              local.set 4
              block  ;; label = @6
                local.get 0
                i32.const 37
                i32.add
                i32.load8_u
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 52
                i32.add
                i32.load
                local.set 4
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 64
                  i32.eq
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 2
                    i32.const 32
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 1
                    f32.demote_f64
                    i32.reinterpret_f32
                    i64.extend_i32_u
                    local.set 5
                    i32.const 73576
                    local.set 6
                    br 2 (;@6;)
                  end
                  i32.const 34
                  i32.const 68208
                  call $runtime._panic
                  unreachable
                end
                local.get 1
                i64.reinterpret_f64
                local.set 5
                i32.const 73592
                local.set 6
              end
              local.get 0
              i32.const 56
              i32.add
              local.set 7
              i64.const 0
              i64.const 1
              local.get 6
              i32.load
              local.tee 2
              i64.extend_i32_u
              local.tee 8
              i64.shl
              local.get 2
              i32.const 63
              i32.gt_u
              local.tee 9
              select
              local.tee 10
              i64.const -1
              i64.add
              local.get 5
              i64.and
              local.set 11
              local.get 2
              local.get 6
              i32.load offset=4
              local.tee 12
              i32.add
              local.tee 2
              i32.const 64
              i32.lt_u
              local.get 5
              local.get 2
              i64.extend_i32_u
              i64.shr_u
              i64.const 0
              i64.ne
              i32.and
              local.set 13
              i32.const 0
              local.get 5
              local.get 8
              i64.shr_u
              i32.wrap_i64
              local.get 9
              select
              i32.const -1
              i32.const -1
              local.get 12
              i32.shl
              i32.const -1
              i32.xor
              local.get 12
              i32.const 31
              i32.gt_u
              select
              local.tee 12
              i32.and
              local.tee 2
              local.get 12
              i32.ne
              br_if 1 (;@4;)
              local.get 3
              i32.const 88
              i32.add
              local.get 7
              i32.const 68219
              i32.const 68223
              local.get 13
              select
              i32.const 68216
              local.get 11
              i64.eqz
              local.tee 2
              select
              i32.const 1
              i32.const 68
              i32.const 4
              i32.const 3
              local.get 2
              select
              call $runtime.sliceAppend
              local.get 3
              i32.load offset=96
              local.set 14
              local.get 3
              i32.load offset=92
              local.set 2
              local.get 3
              i32.load offset=88
              local.set 9
              br 2 (;@3;)
            end
            call $runtime.nilPanic
            unreachable
          end
          local.get 10
          i64.const 0
          local.get 2
          select
          local.get 11
          i64.or
          local.set 15
          local.get 2
          local.get 2
          i32.eqz
          i32.add
          local.get 6
          i32.load offset=8
          i32.add
          local.set 16
          i32.const 24
          call $runtime.alloc
          local.set 2
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i32.const -1
                      i32.gt_s
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 208
                      i32.add
                      i32.const 8
                      i32.add
                      i64.const 0
                      i64.store
                      local.get 3
                      i32.const 192
                      i32.add
                      i32.const 8
                      i32.add
                      i64.const 0
                      i64.store
                      local.get 3
                      i64.const 0
                      i64.store offset=232
                      local.get 3
                      i64.const 0
                      i64.store offset=208
                      local.get 3
                      i64.const 0
                      i64.store offset=192
                      local.get 3
                      local.get 15
                      i64.store offset=224
                      local.get 3
                      local.get 13
                      i32.store8 offset=236
                      local.get 3
                      local.get 16
                      local.get 6
                      i32.load
                      local.tee 9
                      i32.sub
                      local.tee 12
                      i32.store offset=232
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 12
                          i32.const 0
                          i32.gt_s
                          br_if 0 (;@11;)
                          i64.const 0
                          i64.const -1
                          i32.const 0
                          local.get 12
                          i32.sub
                          local.tee 14
                          i64.extend_i32_u
                          local.tee 5
                          i64.shl
                          local.get 15
                          i64.and
                          local.get 14
                          i32.const 63
                          i32.gt_u
                          local.tee 14
                          select
                          local.get 15
                          i64.ne
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 9
                          local.get 3
                          i32.const 0
                          i32.store offset=232
                          local.get 3
                          i64.const 0
                          local.get 15
                          local.get 5
                          i64.shr_u
                          local.get 14
                          select
                          local.tee 11
                          i64.store offset=224
                          local.get 11
                          local.set 8
                          i32.const 0
                          local.set 14
                          i32.const 0
                          local.set 12
                          local.get 11
                          local.set 5
                          br 1 (;@10;)
                        end
                        local.get 12
                        i32.const -1
                        i32.add
                        local.tee 14
                        local.get 12
                        i32.const -2
                        i32.add
                        i64.const 0
                        i64.const 1
                        local.get 9
                        i64.extend_i32_u
                        i64.shl
                        local.get 9
                        i32.const 63
                        i32.gt_u
                        select
                        local.get 15
                        i64.ne
                        local.get 16
                        local.get 6
                        i32.load offset=8
                        i32.sub
                        i32.const 1
                        i32.eq
                        i32.or
                        local.tee 17
                        select
                        local.set 9
                        local.get 15
                        i64.const 1
                        i64.shl
                        local.tee 5
                        local.get 15
                        i64.const 2
                        i64.shl
                        local.get 17
                        select
                        i64.const -1
                        i64.add
                        local.set 11
                        local.get 5
                        i64.const 1
                        i64.or
                        local.set 8
                        local.get 15
                        local.set 5
                      end
                      local.get 3
                      local.get 11
                      i64.store offset=208
                      local.get 3
                      local.get 8
                      i64.store offset=192
                      local.get 3
                      local.get 9
                      i32.store offset=216
                      local.get 3
                      local.get 14
                      i32.store offset=200
                      local.get 3
                      local.get 13
                      i32.const 1
                      i32.and
                      local.tee 17
                      i32.store8 offset=220
                      local.get 3
                      local.get 17
                      i32.store8 offset=204
                      i32.const 32
                      call $runtime.alloc
                      local.set 17
                      local.get 2
                      i64.const 137438953504
                      i64.store offset=4 align=4
                      local.get 2
                      local.get 17
                      i32.store
                      block  ;; label = @10
                        local.get 5
                        i64.const 0
                        i64.ne
                        br_if 0 (;@10;)
                        local.get 2
                        local.get 13
                        i32.store8 offset=20
                        local.get 2
                        i64.const 0
                        i64.store offset=12 align=4
                        local.get 2
                        i32.const 12
                        i32.add
                        local.set 17
                        br 5 (;@5;)
                      end
                      local.get 12
                      i32.eqz
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 4
                            i32.const 1
                            local.get 4
                            select
                            local.tee 18
                            i32.const 16
                            i32.ge_s
                            br_if 0 (;@12;)
                            i32.const 24
                            call $runtime.alloc
                            local.set 12
                            local.get 2
                            i64.const 103079215128
                            i64.store offset=4 align=4
                            local.get 2
                            local.get 12
                            i32.store
                            local.get 3
                            i64.const 0
                            i64.store offset=184
                            local.get 3
                            local.get 13
                            i32.store8 offset=188
                            local.get 3
                            local.get 16
                            local.get 6
                            i32.load
                            i32.sub
                            i32.store offset=184
                            local.get 3
                            local.get 15
                            i64.store offset=176
                            block  ;; label = @13
                              local.get 15
                              i64.const 0
                              i64.ne
                              br_if 0 (;@13;)
                              local.get 2
                              local.get 13
                              i32.store8 offset=20
                              local.get 2
                              i64.const 0
                              i64.store offset=12 align=4
                              br 9 (;@4;)
                            end
                            local.get 3
                            i32.const 176
                            i32.add
                            call $_*strconv.extFloat_.Normalize
                            local.get 3
                            i32.const 160
                            i32.add
                            local.get 3
                            i32.const 176
                            i32.add
                            call $_*strconv.extFloat_.frexp10
                            i32.const 0
                            local.set 19
                            local.get 3
                            i64.load offset=176
                            local.tee 5
                            i64.const 0
                            i32.const 0
                            local.get 5
                            i32.const 0
                            local.get 3
                            i32.load offset=184
                            i32.sub
                            local.tee 20
                            i64.extend_i32_u
                            local.tee 11
                            i64.shr_u
                            i32.wrap_i64
                            local.get 20
                            i32.const 63
                            i32.gt_u
                            local.tee 12
                            select
                            local.tee 14
                            i64.extend_i32_u
                            local.tee 10
                            local.get 11
                            i64.shl
                            local.get 12
                            select
                            i64.sub
                            local.set 8
                            i64.const 1
                            local.set 5
                            local.get 3
                            i32.load offset=160
                            local.set 21
                            i32.const 0
                            local.set 12
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 12
                                    i32.const 20
                                    i32.eq
                                    br_if 0 (;@16;)
                                    local.get 5
                                    local.get 10
                                    i64.le_u
                                    br_if 1 (;@15;)
                                    local.get 12
                                    local.set 19
                                  end
                                  i32.const 0
                                  local.set 12
                                  i64.const 1
                                  local.set 22
                                  block  ;; label = @16
                                    local.get 19
                                    local.get 18
                                    i32.gt_s
                                    br_if 0 (;@16;)
                                    local.get 14
                                    local.set 9
                                    i32.const 0
                                    local.set 23
                                    br 3 (;@13;)
                                  end
                                  local.get 19
                                  local.get 18
                                  i32.sub
                                  local.tee 9
                                  i32.const 19
                                  i32.gt_u
                                  br_if 13 (;@2;)
                                  local.get 14
                                  local.get 14
                                  local.get 9
                                  i32.const 3
                                  i32.shl
                                  i32.const 69872
                                  i32.add
                                  i64.load
                                  local.tee 22
                                  i32.wrap_i64
                                  local.tee 17
                                  i32.div_u
                                  local.tee 9
                                  local.get 17
                                  i32.mul
                                  i32.sub
                                  local.set 23
                                  br 2 (;@13;)
                                end
                                local.get 12
                                i32.const 1
                                i32.add
                                local.set 12
                                local.get 5
                                i64.const 10
                                i64.mul
                                local.set 5
                                br 0 (;@14;)
                              end
                            end
                            local.get 3
                            i32.const 264
                            i32.add
                            i64.const 0
                            i64.store
                            local.get 3
                            i32.const 256
                            i32.add
                            i64.const 0
                            i64.store
                            local.get 3
                            i32.const 248
                            i32.add
                            i64.const 0
                            i64.store
                            local.get 3
                            i64.const 0
                            i64.store offset=240
                            local.get 3
                            i32.const 240
                            i32.add
                            i32.const 31
                            i32.add
                            local.set 17
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 9
                                br_if 0 (;@14;)
                                local.get 3
                                i32.const 272
                                i32.add
                                local.set 17
                                i32.const 0
                                local.set 14
                                local.get 12
                                local.set 9
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 9
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    local.get 14
                                    local.get 2
                                    i32.load offset=4
                                    i32.ge_u
                                    br_if 14 (;@2;)
                                    local.get 2
                                    i32.load
                                    local.get 14
                                    i32.add
                                    local.get 17
                                    local.get 9
                                    i32.add
                                    i32.load8_u
                                    i32.store8
                                    local.get 14
                                    i32.const 1
                                    i32.add
                                    local.set 14
                                    local.get 9
                                    i32.const 1
                                    i32.add
                                    local.set 9
                                    br 0 (;@16;)
                                  end
                                end
                                local.get 2
                                local.get 19
                                local.get 21
                                i32.add
                                i32.store offset=16
                                local.get 2
                                i32.const 0
                                local.get 12
                                i32.sub
                                local.tee 9
                                i32.store offset=12
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 18
                                    local.get 12
                                    i32.add
                                    local.tee 12
                                    i32.const 1
                                    i32.ge_s
                                    br_if 0 (;@16;)
                                    i64.const 1
                                    local.set 5
                                    br 1 (;@15;)
                                  end
                                  local.get 22
                                  i64.const 1
                                  i64.ne
                                  br_if 4 (;@11;)
                                  local.get 23
                                  br_if 4 (;@11;)
                                  i64.const 1
                                  local.set 5
                                  i64.const 0
                                  i64.const 1
                                  local.get 11
                                  i64.shl
                                  local.get 20
                                  i32.const 63
                                  i32.gt_u
                                  local.tee 14
                                  select
                                  local.set 24
                                  block  ;; label = @16
                                    loop  ;; label = @17
                                      local.get 12
                                      i32.const 1
                                      i32.lt_s
                                      br_if 1 (;@16;)
                                      local.get 5
                                      i64.const 20
                                      i64.mul
                                      local.get 24
                                      i64.gt_u
                                      br_if 5 (;@12;)
                                      local.get 9
                                      local.get 2
                                      i32.load offset=4
                                      i32.ge_u
                                      br_if 15 (;@2;)
                                      local.get 5
                                      i64.const 10
                                      i64.mul
                                      local.set 5
                                      local.get 2
                                      i32.load
                                      local.get 9
                                      i32.add
                                      i32.const 48
                                      local.get 8
                                      i64.const 10
                                      i64.mul
                                      local.tee 8
                                      local.get 11
                                      i64.shr_u
                                      local.tee 10
                                      i32.wrap_i64
                                      i32.const 48
                                      i32.add
                                      local.get 14
                                      select
                                      i32.store8
                                      local.get 8
                                      i64.const 0
                                      local.get 10
                                      local.get 11
                                      i64.shl
                                      local.get 14
                                      select
                                      i64.sub
                                      local.set 8
                                      local.get 12
                                      i32.const -1
                                      i32.add
                                      local.set 12
                                      local.get 9
                                      i32.const 1
                                      i32.add
                                      local.set 9
                                      br 0 (;@17;)
                                    end
                                  end
                                  local.get 2
                                  local.get 9
                                  i32.store offset=12
                                end
                                i64.const 0
                                local.get 22
                                local.get 11
                                i64.shl
                                local.get 20
                                i32.const 63
                                i32.gt_u
                                local.tee 12
                                select
                                local.tee 10
                                local.get 8
                                i64.const 0
                                local.get 23
                                i64.extend_i32_u
                                local.get 11
                                i64.shl
                                local.get 12
                                select
                                i64.or
                                local.tee 11
                                i64.lt_u
                                br_if 4 (;@10;)
                                local.get 5
                                i64.const 1
                                i64.shl
                                local.get 10
                                i64.gt_u
                                br_if 5 (;@9;)
                                block  ;; label = @15
                                  local.get 5
                                  local.get 11
                                  i64.add
                                  i64.const 1
                                  i64.shl
                                  local.get 10
                                  i64.lt_u
                                  br_if 0 (;@15;)
                                  local.get 11
                                  local.get 5
                                  i64.sub
                                  i64.const 1
                                  i64.shl
                                  local.get 10
                                  i64.le_u
                                  br_if 3 (;@12;)
                                  local.get 9
                                  i32.const -1
                                  i32.add
                                  local.set 12
                                  local.get 2
                                  i32.load offset=4
                                  local.set 9
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      loop  ;; label = @18
                                        local.get 12
                                        i32.const -1
                                        i32.le_s
                                        br_if 1 (;@17;)
                                        local.get 12
                                        local.get 9
                                        i32.ge_u
                                        br_if 16 (;@2;)
                                        local.get 2
                                        i32.load
                                        local.get 12
                                        i32.add
                                        local.tee 14
                                        i32.load8_u
                                        local.tee 17
                                        i32.const 57
                                        i32.ne
                                        br_if 2 (;@16;)
                                        local.get 2
                                        local.get 12
                                        i32.store offset=12
                                        local.get 12
                                        i32.const -1
                                        i32.add
                                        local.set 12
                                        br 0 (;@18;)
                                      end
                                    end
                                    local.get 9
                                    i32.eqz
                                    br_if 14 (;@2;)
                                    local.get 2
                                    i32.load
                                    i32.const 49
                                    i32.store8
                                    i32.const 1
                                    local.set 9
                                    local.get 2
                                    i32.const 1
                                    i32.store offset=12
                                    local.get 2
                                    local.get 2
                                    i32.load offset=16
                                    i32.const 1
                                    i32.add
                                    i32.store offset=16
                                    br 1 (;@15;)
                                  end
                                  local.get 14
                                  local.get 17
                                  i32.const 1
                                  i32.add
                                  i32.store8
                                  local.get 2
                                  i32.load offset=12
                                  local.set 9
                                end
                                local.get 9
                                i32.const -1
                                i32.add
                                local.set 12
                                loop  ;; label = @15
                                  local.get 12
                                  i32.const -1
                                  i32.le_s
                                  br_if 11 (;@4;)
                                  local.get 12
                                  local.get 2
                                  i32.load offset=4
                                  i32.ge_u
                                  br_if 13 (;@2;)
                                  local.get 2
                                  i32.load
                                  local.get 12
                                  i32.add
                                  local.set 9
                                  local.get 12
                                  i32.const -1
                                  i32.add
                                  local.tee 14
                                  local.set 12
                                  local.get 9
                                  i32.load8_u
                                  i32.const 48
                                  i32.eq
                                  br_if 0 (;@15;)
                                end
                                local.get 2
                                local.get 14
                                i32.const 2
                                i32.add
                                i32.store offset=12
                                br 10 (;@4;)
                              end
                              local.get 9
                              i32.const 10
                              i32.div_u
                              local.set 14
                              local.get 12
                              i32.const 31
                              i32.add
                              i32.const 31
                              i32.gt_u
                              br_if 11 (;@2;)
                              local.get 17
                              local.get 12
                              i32.add
                              local.get 14
                              i32.const -10
                              i32.mul
                              local.get 9
                              i32.add
                              i32.const 48
                              i32.add
                              i32.store8
                              local.get 12
                              i32.const -1
                              i32.add
                              local.set 12
                              local.get 14
                              local.set 9
                              br 0 (;@13;)
                            end
                          end
                          local.get 3
                          i32.const 144
                          i32.add
                          local.get 7
                          local.get 18
                          local.get 13
                          local.get 15
                          local.get 16
                          local.get 6
                          call $strconv.bigFtoa
                          local.get 3
                          i32.load offset=152
                          local.set 14
                          local.get 3
                          i32.load offset=148
                          local.set 2
                          local.get 3
                          i32.load offset=144
                          local.set 9
                          br 8 (;@3;)
                        end
                        i32.const 34
                        i32.const 70504
                        call $runtime._panic
                        unreachable
                      end
                      i32.const 34
                      i32.const 66680
                      call $runtime._panic
                      unreachable
                    end
                    i32.const 34
                    i32.const 66720
                    call $runtime._panic
                    unreachable
                  end
                  local.get 11
                  local.get 5
                  i64.ne
                  br_if 0 (;@7;)
                  local.get 9
                  br_if 0 (;@7;)
                  local.get 13
                  local.get 13
                  i32.xor
                  local.tee 17
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 8
                  i64.ne
                  br_if 0 (;@7;)
                  local.get 14
                  br_if 0 (;@7;)
                  local.get 17
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 256
                  i32.add
                  i64.const 0
                  i64.store
                  local.get 3
                  i32.const 248
                  i32.add
                  i64.const 0
                  i64.store
                  local.get 3
                  i64.const 0
                  i64.store offset=240
                  local.get 3
                  i32.const 240
                  i32.add
                  i32.const 23
                  i32.add
                  local.set 9
                  i32.const 0
                  local.set 12
                  loop  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 5
                        i64.eqz
                        br_if 0 (;@10;)
                        local.get 5
                        i64.const 10
                        i64.div_u
                        local.set 11
                        local.get 12
                        i32.const 23
                        i32.add
                        i32.const 23
                        i32.le_u
                        br_if 1 (;@9;)
                        br 8 (;@2;)
                      end
                      local.get 12
                      i32.const -1
                      i32.xor
                      local.set 14
                      i32.const 0
                      local.set 9
                      i32.const 0
                      local.get 12
                      i32.sub
                      local.set 18
                      local.get 3
                      i32.const 264
                      i32.add
                      local.set 17
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 12
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 9
                          local.get 2
                          i32.load offset=4
                          i32.ge_u
                          br_if 9 (;@2;)
                          local.get 2
                          i32.load
                          local.get 9
                          i32.add
                          local.get 17
                          local.get 12
                          i32.add
                          i32.load8_u
                          i32.store8
                          local.get 12
                          i32.const 1
                          i32.add
                          local.set 12
                          local.get 9
                          i32.const 1
                          i32.add
                          local.set 9
                          br 0 (;@11;)
                        end
                      end
                      local.get 2
                      local.get 18
                      i32.store offset=16
                      local.get 2
                      local.get 18
                      i32.store offset=12
                      local.get 2
                      i32.const 12
                      i32.add
                      local.set 17
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 14
                          i32.const 1
                          i32.add
                          i32.const 0
                          i32.gt_s
                          br_if 0 (;@11;)
                          local.get 2
                          i32.const 0
                          i32.store offset=16
                          br 5 (;@6;)
                        end
                        local.get 14
                        local.get 2
                        i32.load offset=4
                        i32.ge_u
                        br_if 8 (;@2;)
                        local.get 2
                        i32.load
                        local.get 14
                        i32.add
                        i32.load8_u
                        i32.const 48
                        i32.ne
                        br_if 4 (;@6;)
                        local.get 17
                        local.get 14
                        i32.store
                        local.get 14
                        i32.const -1
                        i32.add
                        local.set 14
                        br 0 (;@10;)
                      end
                    end
                    local.get 9
                    local.get 12
                    i32.add
                    local.get 11
                    i64.const -10
                    i64.mul
                    local.get 5
                    i64.add
                    i32.wrap_i64
                    i32.const 48
                    i32.add
                    i32.store8
                    local.get 12
                    i32.const -1
                    i32.add
                    local.set 12
                    local.get 11
                    local.set 5
                    br 0 (;@8;)
                  end
                end
                local.get 3
                i32.const 192
                i32.add
                call $_*strconv.extFloat_.Normalize
                block  ;; label = @7
                  local.get 12
                  local.get 3
                  i32.load offset=200
                  local.tee 14
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 14
                  i32.store offset=232
                  local.get 3
                  i64.const 0
                  local.get 5
                  local.get 12
                  local.get 14
                  i32.sub
                  local.tee 12
                  i64.extend_i32_u
                  i64.shl
                  local.get 12
                  i32.const 63
                  i32.gt_u
                  select
                  i64.store offset=224
                end
                block  ;; label = @7
                  local.get 9
                  local.get 14
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 14
                  i32.store offset=216
                  local.get 3
                  i64.const 0
                  local.get 11
                  local.get 9
                  local.get 14
                  i32.sub
                  local.tee 12
                  i64.extend_i32_u
                  i64.shl
                  local.get 12
                  i32.const 63
                  i32.gt_u
                  select
                  i64.store offset=208
                end
                local.get 3
                i32.const 136
                i32.add
                local.get 3
                i32.const 192
                i32.add
                call $_*strconv.extFloat_.frexp10
                local.get 3
                i32.load offset=136
                local.set 25
                local.get 3
                i32.const 208
                i32.add
                local.get 3
                i32.load offset=140
                i32.const 4
                i32.shl
                local.tee 12
                i32.const 66768
                i32.add
                i64.load
                local.tee 5
                local.get 12
                i32.const 66776
                i32.add
                i32.load
                local.tee 12
                call $_*strconv.extFloat_.Multiply
                local.get 3
                i32.const 224
                i32.add
                local.get 5
                local.get 12
                call $_*strconv.extFloat_.Multiply
                local.get 3
                local.get 3
                i64.load offset=208
                i64.const -1
                i64.add
                local.tee 5
                i64.store offset=208
                i64.const 1
                local.set 8
                local.get 3
                local.get 3
                i64.load offset=192
                i64.const 1
                i64.add
                local.tee 22
                i64.store offset=192
                local.get 22
                local.get 5
                i64.sub
                local.set 10
                i32.const 0
                local.set 14
                local.get 22
                i64.const 0
                i32.const 0
                local.get 22
                i32.const 0
                local.get 3
                i32.load offset=200
                i32.sub
                local.tee 21
                i64.extend_i32_u
                local.tee 5
                i64.shr_u
                i32.wrap_i64
                local.get 21
                i32.const 63
                i32.gt_u
                local.tee 12
                select
                local.tee 17
                i64.extend_i32_u
                local.tee 24
                local.get 5
                i64.shl
                local.get 12
                select
                i64.sub
                local.set 11
                local.get 22
                local.get 3
                i64.load offset=224
                i64.sub
                local.set 26
                i32.const 0
                local.set 12
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 12
                        i32.const 20
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 8
                        local.get 24
                        i64.le_u
                        br_if 1 (;@9;)
                        local.get 12
                        local.set 14
                      end
                      local.get 14
                      i32.const -1
                      i32.add
                      local.tee 12
                      i32.const 3
                      i32.shl
                      i32.const 69872
                      i32.add
                      local.set 18
                      i32.const 0
                      local.set 9
                      local.get 21
                      i32.const 63
                      i32.gt_u
                      local.set 23
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 12
                            i32.const -1
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 12
                            i32.const 19
                            i32.gt_u
                            br_if 10 (;@2;)
                            local.get 17
                            local.get 18
                            i64.load
                            local.tee 8
                            i32.wrap_i64
                            local.tee 20
                            i32.div_u
                            local.set 19
                            local.get 9
                            local.get 2
                            i32.load offset=4
                            i32.ge_u
                            br_if 10 (;@2;)
                            local.get 2
                            i32.load
                            local.get 9
                            i32.add
                            local.get 19
                            i32.const 48
                            i32.add
                            i32.store8
                            i64.const 0
                            local.get 17
                            local.get 19
                            local.get 20
                            i32.mul
                            i32.sub
                            local.tee 17
                            i64.extend_i32_u
                            local.get 5
                            i64.shl
                            local.get 23
                            select
                            local.get 11
                            i64.add
                            local.tee 24
                            local.get 10
                            i64.lt_u
                            br_if 2 (;@10;)
                            local.get 12
                            i32.const -1
                            i32.add
                            local.set 12
                            local.get 18
                            i32.const -8
                            i32.add
                            local.set 18
                            local.get 9
                            i32.const 1
                            i32.add
                            local.set 9
                            br 0 (;@12;)
                          end
                        end
                        local.get 2
                        local.get 14
                        i32.store offset=12
                        local.get 2
                        local.get 14
                        local.get 25
                        i32.add
                        i32.store offset=16
                        local.get 2
                        local.get 3
                        i32.load8_u offset=236
                        i32.const 1
                        i32.and
                        i32.store8 offset=20
                        local.get 2
                        i32.const 12
                        i32.add
                        local.set 17
                        i64.const 1
                        local.set 8
                        local.get 21
                        i32.const 63
                        i32.gt_u
                        local.set 12
                        loop  ;; label = @11
                          local.get 8
                          local.set 24
                          local.get 14
                          local.get 2
                          i32.load offset=4
                          i32.ge_u
                          br_if 9 (;@2;)
                          local.get 2
                          i32.load
                          local.get 14
                          i32.add
                          i32.const 0
                          local.get 11
                          i64.const 10
                          i64.mul
                          local.tee 11
                          local.get 5
                          i64.shr_u
                          i32.wrap_i64
                          local.get 12
                          select
                          local.tee 9
                          i32.const 48
                          i32.add
                          i32.store8
                          local.get 2
                          local.get 2
                          i32.load offset=12
                          i32.const 1
                          i32.add
                          local.tee 14
                          i32.store offset=12
                          local.get 11
                          i64.const 0
                          local.get 9
                          i64.extend_i32_s
                          local.get 5
                          i64.shl
                          local.get 12
                          select
                          i64.sub
                          local.tee 11
                          local.get 24
                          i64.const 10
                          i64.mul
                          local.tee 8
                          local.get 10
                          i64.mul
                          local.tee 22
                          i64.ge_u
                          br_if 0 (;@11;)
                        end
                        local.get 2
                        local.get 11
                        local.get 8
                        local.get 26
                        i64.mul
                        local.get 22
                        i64.const 0
                        i64.const 1
                        local.get 5
                        i64.shl
                        local.get 21
                        i32.const 63
                        i32.gt_u
                        select
                        local.get 24
                        i64.const 20
                        i64.mul
                        call $strconv.adjustLastDigit
                        i32.const 1
                        i32.and
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      local.get 2
                      local.get 14
                      local.get 25
                      i32.add
                      i32.store offset=16
                      local.get 2
                      local.get 9
                      i32.const 1
                      i32.add
                      i32.store offset=12
                      local.get 2
                      local.get 3
                      i32.load8_u offset=236
                      i32.const 1
                      i32.and
                      i32.store8 offset=20
                      local.get 2
                      local.get 24
                      local.get 26
                      local.get 10
                      i64.const 0
                      local.get 8
                      local.get 5
                      i64.shl
                      local.get 21
                      i32.const 63
                      i32.gt_u
                      select
                      i64.const 2
                      call $strconv.adjustLastDigit
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 2
                      i32.const 12
                      i32.add
                      local.set 17
                      br 4 (;@5;)
                    end
                    local.get 12
                    i32.const 1
                    i32.add
                    local.set 12
                    local.get 8
                    i64.const 10
                    i64.mul
                    local.set 8
                    br 0 (;@8;)
                  end
                end
                local.get 3
                i32.const 120
                i32.add
                local.get 7
                local.get 4
                local.get 13
                local.get 15
                local.get 16
                local.get 6
                call $strconv.bigFtoa
                local.get 3
                i32.load offset=128
                local.set 14
                local.get 3
                i32.load offset=124
                local.set 2
                local.get 3
                i32.load offset=120
                local.set 9
                br 3 (;@3;)
              end
              local.get 2
              local.get 13
              i32.store8 offset=20
            end
            local.get 17
            i32.load
            local.set 18
          end
          local.get 3
          i32.const 104
          i32.add
          local.get 7
          local.get 4
          i32.const 31
          i32.shr_u
          local.get 13
          local.get 2
          i32.load
          local.get 2
          i32.load offset=4
          local.get 2
          i32.load offset=8
          local.get 2
          i32.load offset=12
          local.get 2
          i32.load offset=16
          local.get 2
          i32.load8_u offset=20
          local.get 18
          call $strconv.formatDigits
          local.get 3
          i32.load offset=112
          local.set 14
          local.get 3
          i32.load offset=108
          local.set 2
          local.get 3
          i32.load offset=104
          local.set 9
        end
        local.get 2
        i32.const 1
        i32.le_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              i32.load8_u offset=1
              i32.const -43
              i32.add
              br_table 0 (;@5;) 1 (;@4;) 0 (;@5;) 1 (;@4;)
            end
            local.get 2
            local.get 14
            i32.gt_u
            br_if 3 (;@1;)
            local.get 9
            i32.const 1
            i32.add
            local.set 9
            local.get 14
            i32.const -1
            i32.add
            local.set 14
            local.get 2
            i32.const -1
            i32.add
            local.set 2
            br 1 (;@3;)
          end
          local.get 9
          i32.const 43
          i32.store8
        end
        block  ;; label = @3
          local.get 0
          i32.const 41
          i32.add
          i32.load8_u
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 9
          i32.load8_u
          i32.const 43
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 39
          i32.add
          i32.load8_u
          br_if 0 (;@3;)
          local.get 9
          i32.const 32
          i32.store8
        end
        local.get 2
        i32.const 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 32
        i32.add
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              i32.load8_u offset=1
              local.tee 12
              i32.const 78
              i32.eq
              br_if 0 (;@5;)
              local.get 12
              i32.const 73
              i32.ne
              br_if 1 (;@4;)
            end
            local.get 0
            i32.const 42
            i32.add
            local.tee 12
            i32.load8_u
            local.set 17
            local.get 12
            i32.const 0
            i32.store8
            block  ;; label = @5
              block  ;; label = @6
                local.get 9
                i32.const 1
                i32.add
                local.tee 12
                i32.load8_u
                i32.const 78
                i32.ne
                br_if 0 (;@6;)
                local.get 0
                i32.load8_u offset=41
                br_if 0 (;@6;)
                local.get 0
                i32.const 39
                i32.add
                i32.load8_u
                br_if 0 (;@6;)
                local.get 2
                local.get 14
                i32.gt_u
                br_if 5 (;@1;)
                local.get 2
                i32.const -1
                i32.add
                local.set 2
                br 1 (;@5;)
              end
              local.get 9
              local.set 12
            end
            local.get 7
            local.get 12
            local.get 2
            call $_*fmt.fmt_.pad
            local.get 0
            local.get 17
            i32.const 1
            i32.and
            i32.store8 offset=42
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 0
            i32.const 40
            i32.add
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            i32.const 6
            local.set 13
            i32.const 6
            local.get 4
            local.get 4
            i32.const -1
            i32.eq
            select
            local.set 17
            i32.const 0
            local.set 20
            i32.const 6
            call $runtime.alloc
            local.set 4
            i32.const -1
            local.set 19
            i32.const 0
            local.set 16
            i32.const 0
            local.set 23
            i32.const 1
            local.set 12
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 2
                                    local.get 12
                                    i32.le_s
                                    br_if 0 (;@16;)
                                    local.get 2
                                    local.get 12
                                    i32.le_u
                                    br_if 14 (;@2;)
                                    local.get 9
                                    local.get 12
                                    i32.add
                                    local.tee 6
                                    i32.load8_u
                                    local.tee 18
                                    i32.const 79
                                    i32.gt_s
                                    br_if 1 (;@15;)
                                    local.get 18
                                    i32.const 46
                                    i32.ne
                                    br_if 2 (;@14;)
                                    i32.const 1
                                    local.set 16
                                    br 10 (;@6;)
                                  end
                                  local.get 16
                                  i32.const 1
                                  i32.and
                                  br_if 5 (;@10;)
                                  local.get 2
                                  i32.const 2
                                  i32.eq
                                  br_if 3 (;@12;)
                                  br 4 (;@11;)
                                end
                                local.get 18
                                i32.const 80
                                i32.eq
                                br_if 6 (;@8;)
                                local.get 18
                                i32.const 101
                                i32.eq
                                br_if 5 (;@9;)
                                local.get 18
                                i32.const 112
                                i32.eq
                                br_if 6 (;@8;)
                                br 1 (;@13;)
                              end
                              local.get 18
                              i32.const 69
                              i32.eq
                              br_if 4 (;@9;)
                            end
                            local.get 17
                            local.get 23
                            local.get 18
                            i32.const 48
                            i32.ne
                            i32.or
                            local.tee 23
                            i32.const 1
                            i32.and
                            i32.sub
                            local.set 17
                            br 6 (;@6;)
                          end
                          local.get 17
                          local.get 9
                          i32.load8_u offset=1
                          i32.const 48
                          i32.eq
                          i32.sub
                          local.set 17
                        end
                        local.get 3
                        i32.const 46
                        i32.store offset=168
                        local.get 3
                        i32.const 72
                        i32.add
                        local.get 9
                        local.get 3
                        i32.const 168
                        i32.add
                        local.get 2
                        local.get 14
                        i32.const 1
                        call $runtime.sliceAppend
                        local.get 3
                        i32.load offset=80
                        local.set 14
                        local.get 3
                        i32.load offset=76
                        local.set 2
                        local.get 3
                        i32.load offset=72
                        local.set 9
                      end
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 17
                          i32.const 1
                          i32.lt_s
                          br_if 1 (;@10;)
                          local.get 3
                          i32.const 48
                          i32.store offset=172
                          local.get 3
                          i32.const 40
                          i32.add
                          local.get 9
                          local.get 3
                          i32.const 172
                          i32.add
                          local.get 2
                          local.get 14
                          i32.const 1
                          call $runtime.sliceAppend
                          local.get 17
                          i32.const -1
                          i32.add
                          local.set 17
                          local.get 3
                          i32.load offset=48
                          local.set 14
                          local.get 3
                          i32.load offset=44
                          local.set 2
                          local.get 3
                          i32.load offset=40
                          local.set 9
                          br 0 (;@11;)
                        end
                      end
                      local.get 3
                      i32.const 56
                      i32.add
                      local.get 9
                      local.get 4
                      local.get 2
                      local.get 14
                      local.get 20
                      call $runtime.sliceAppend
                      local.get 3
                      i32.load offset=64
                      local.set 14
                      local.get 3
                      i32.load offset=60
                      local.set 2
                      local.get 3
                      i32.load offset=56
                      local.set 9
                      br 5 (;@4;)
                    end
                    local.get 2
                    local.get 14
                    i32.gt_u
                    br_if 7 (;@1;)
                    local.get 2
                    local.get 12
                    i32.lt_u
                    br_if 7 (;@1;)
                    local.get 3
                    i32.const 24
                    i32.add
                    local.get 4
                    local.get 6
                    local.get 20
                    local.get 13
                    local.get 2
                    local.get 19
                    i32.add
                    call $runtime.sliceAppend
                    local.get 12
                    local.get 14
                    i32.gt_u
                    br_if 7 (;@1;)
                    local.get 3
                    i32.load offset=32
                    local.set 13
                    local.get 3
                    i32.load offset=28
                    local.set 20
                    local.get 3
                    i32.load offset=24
                    local.set 4
                    br 1 (;@7;)
                  end
                  local.get 2
                  local.get 14
                  i32.gt_u
                  br_if 6 (;@1;)
                  local.get 2
                  local.get 12
                  i32.lt_u
                  br_if 6 (;@1;)
                  local.get 3
                  i32.const 8
                  i32.add
                  local.get 4
                  local.get 6
                  local.get 20
                  local.get 13
                  local.get 2
                  local.get 19
                  i32.add
                  call $runtime.sliceAppend
                  local.get 12
                  local.get 14
                  i32.gt_u
                  br_if 6 (;@1;)
                  local.get 3
                  i32.load offset=16
                  local.set 13
                  local.get 3
                  i32.load offset=12
                  local.set 20
                  local.get 3
                  i32.load offset=8
                  local.set 4
                end
                local.get 12
                local.set 2
              end
              local.get 19
              i32.const -1
              i32.add
              local.set 19
              local.get 12
              i32.const 1
              i32.add
              local.set 12
              br 0 (;@5;)
            end
          end
          block  ;; label = @4
            local.get 0
            i32.const 39
            i32.add
            i32.load8_u
            br_if 0 (;@4;)
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 9
            i32.load8_u
            i32.const 43
            i32.ne
            br_if 0 (;@4;)
            local.get 2
            local.get 14
            i32.gt_u
            br_if 3 (;@1;)
            local.get 7
            local.get 9
            i32.const 1
            i32.add
            local.get 2
            i32.const -1
            i32.add
            call $_*fmt.fmt_.pad
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 0
            i32.const 42
            i32.add
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 36
            i32.add
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 48
            i32.add
            i32.load
            local.get 2
            i32.le_s
            br_if 0 (;@4;)
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.load offset=32
            local.get 9
            i32.load8_u
            call $_*fmt.buffer_.writeByte
            local.get 7
            local.get 0
            i32.load offset=48
            local.get 2
            i32.sub
            call $_*fmt.fmt_.writePadding
            local.get 2
            local.get 14
            i32.gt_u
            br_if 3 (;@1;)
            local.get 7
            i32.load
            local.get 9
            i32.const 1
            i32.add
            local.get 2
            i32.const -1
            i32.add
            call $_*fmt.buffer_.write
            br 1 (;@3;)
          end
          local.get 7
          local.get 9
          local.get 2
          call $_*fmt.fmt_.pad
        end
        local.get 3
        i32.const 272
        i32.add
        global.set 0
        return
      end
      call $runtime.lookupPanic
      unreachable
    end
    call $runtime.slicePanic
    unreachable)
  (func $_*fmt.buffer_.writeString (type 4) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 3
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 2
    call $runtime.sliceAppend
    local.get 3
    i32.load offset=8
    local.set 1
    local.get 0
    local.get 3
    i64.load
    i64.store align=4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func $_*strconv.extFloat_.Normalize (type 12) (param i32)
    (local i64 i32 i64 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i64.load
          local.tee 1
          i64.eqz
          br_if 0 (;@3;)
          local.get 1
          i64.const 32
          i64.shr_u
          local.get 1
          local.get 1
          i64.const 4294967295
          i64.gt_u
          local.tee 2
          select
          local.tee 3
          i64.const 16
          i64.shr_u
          local.get 3
          local.get 3
          i64.const 65535
          i64.gt_u
          local.tee 4
          select
          local.tee 3
          i64.const 8
          i64.shr_u
          local.get 3
          local.get 3
          i64.const 255
          i64.gt_u
          local.tee 5
          select
          i32.wrap_i64
          local.tee 6
          i32.const 256
          i32.ge_u
          br_if 2 (;@1;)
          local.get 0
          local.get 0
          i32.load offset=8
          i32.const 64
          local.get 2
          i32.const 5
          i32.shl
          local.tee 2
          i32.const 16
          i32.or
          local.get 2
          local.get 4
          select
          local.tee 2
          i32.const 8
          i32.or
          local.get 2
          local.get 5
          select
          local.get 6
          i32.const 66320
          i32.add
          i32.load8_u
          i32.add
          i32.sub
          local.tee 2
          i32.sub
          i32.store offset=8
          local.get 0
          i64.const 0
          local.get 1
          local.get 2
          i64.extend_i32_u
          i64.shl
          local.get 2
          i32.const 63
          i32.gt_u
          select
          i64.store
        end
        return
      end
      call $runtime.nilPanic
      unreachable
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*fmt.fmt_.pad (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=16
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        local.get 2
                        i32.ge_s
                        br_if 0 (;@10;)
                        local.get 4
                        local.get 2
                        i32.ge_u
                        br_if 8 (;@2;)
                        local.get 1
                        local.get 4
                        i32.add
                        i32.load8_s
                        local.tee 5
                        i32.const -1
                        i32.le_s
                        br_if 1 (;@9;)
                        br 2 (;@8;)
                      end
                      local.get 0
                      i32.const 6
                      i32.add
                      i32.load8_u
                      i32.eqz
                      br_if 8 (;@1;)
                      local.get 0
                      i32.load
                      local.get 1
                      local.get 2
                      call $_*fmt.buffer_.write
                      local.get 0
                      local.get 3
                      call $_*fmt.fmt_.writePadding
                      return
                    end
                    local.get 5
                    i32.const 255
                    i32.and
                    local.tee 6
                    i32.const 65536
                    i32.add
                    i32.load8_u
                    local.tee 5
                    i32.const 241
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 5
                    i32.const 7
                    i32.and
                    local.tee 7
                    i32.add
                    local.get 2
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 4
                    i32.const 1
                    i32.add
                    local.tee 8
                    local.get 2
                    i32.ge_u
                    br_if 6 (;@2;)
                    local.get 1
                    local.get 8
                    i32.add
                    i32.load8_u
                    local.tee 8
                    local.get 5
                    i32.const 4
                    i32.shr_u
                    i32.const 1
                    i32.shl
                    local.tee 5
                    i32.const 65792
                    i32.add
                    i32.load8_u
                    i32.lt_u
                    br_if 1 (;@7;)
                    local.get 5
                    i32.const 65793
                    i32.add
                    i32.load8_u
                    i32.const 255
                    i32.and
                    local.get 8
                    i32.lt_u
                    br_if 1 (;@7;)
                    i32.const 2
                    local.set 5
                    local.get 6
                    i32.const -194
                    i32.add
                    i32.const 30
                    i32.lt_u
                    br_if 2 (;@6;)
                    local.get 4
                    i32.const 2
                    i32.add
                    local.tee 5
                    local.get 2
                    i32.ge_u
                    br_if 6 (;@2;)
                    local.get 1
                    local.get 5
                    i32.add
                    i32.load8_s
                    local.tee 8
                    i32.const -1
                    i32.gt_s
                    br_if 1 (;@7;)
                    i32.const 1
                    local.set 5
                    local.get 8
                    i32.const 255
                    i32.and
                    i32.const 191
                    i32.gt_u
                    br_if 2 (;@6;)
                    i32.const 3
                    local.set 5
                    local.get 6
                    i32.const 240
                    i32.and
                    i32.const 224
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 4
                    i32.const 3
                    i32.add
                    local.tee 5
                    local.get 2
                    i32.ge_u
                    br_if 6 (;@2;)
                    i32.const 1
                    i32.const 1
                    local.get 7
                    local.get 1
                    local.get 5
                    i32.add
                    i32.load8_u
                    local.tee 5
                    i32.const 191
                    i32.gt_u
                    select
                    local.get 5
                    i32.const 24
                    i32.shl
                    i32.const 24
                    i32.shr_s
                    i32.const -1
                    i32.gt_s
                    select
                    local.set 5
                    br 2 (;@6;)
                  end
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 4
                  br 2 (;@5;)
                end
                i32.const 1
                local.set 5
              end
              local.get 5
              local.get 4
              i32.add
              local.set 4
            end
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            br 0 (;@4;)
          end
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        call $_*fmt.buffer_.write
        return
      end
      call $runtime.lookupPanic
      unreachable
    end
    local.get 0
    local.get 3
    call $_*fmt.fmt_.writePadding
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call $_*fmt.buffer_.write)
  (func $_*fmt.fmt_.writePadding (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 0
        i32.le_s
        br_if 0 (;@2;)
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=4
                local.tee 3
                local.get 1
                i32.add
                local.tee 4
                local.get 2
                i32.load offset=8
                local.tee 5
                i32.gt_s
                br_if 0 (;@6;)
                local.get 2
                i32.load
                local.set 6
                br 1 (;@5;)
              end
              local.get 5
              i32.const 1
              i32.shl
              local.get 1
              i32.add
              local.tee 5
              i32.const 0
              i32.lt_s
              br_if 1 (;@4;)
              local.get 5
              call $runtime.alloc
              local.set 6
              local.get 0
              i32.load
              local.tee 2
              i32.eqz
              br_if 4 (;@1;)
              local.get 6
              local.get 2
              i32.load
              local.get 5
              local.get 2
              i32.load offset=4
              local.tee 2
              local.get 2
              local.get 5
              i32.gt_u
              select
              call $memmove
              drop
            end
            local.get 3
            local.get 4
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 48
            i32.const 32
            local.get 0
            i32.const 10
            i32.add
            i32.load8_u
            select
            local.set 7
            local.get 6
            local.get 3
            i32.add
            local.set 2
            br 1 (;@3;)
          end
          call $runtime.slicePanic
          unreachable
        end
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 7
              i32.store8
              local.get 2
              i32.const 1
              i32.add
              local.set 2
              local.get 1
              i32.const -1
              i32.add
              local.set 1
              br 1 (;@4;)
            end
          end
          call $runtime.lookupPanic
          unreachable
        end
        local.get 0
        i32.load
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 5
        i32.store offset=8
        local.get 1
        local.get 4
        i32.store offset=4
        local.get 1
        local.get 6
        i32.store
      end
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*fmt.buffer_.write (type 4) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 3
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 2
    call $runtime.sliceAppend
    local.get 3
    i32.load offset=8
    local.set 1
    local.get 0
    local.get 3
    i64.load
    i64.store align=4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func $_*fmt.pp_.fmtInteger (type 17) (param i32 i64 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 44
        i32.add
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      i32.const 32
      i32.add
      local.get 1
      i32.const 10
      local.get 2
      i32.const 70304
      call $_*fmt.fmt_.fmtInteger
      return
    end
    local.get 0
    local.get 1
    i32.const 1
    call $_*fmt.pp_.fmt0x64)
  (func $_*fmt.pp_.fmtString (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 44
          i32.add
          i32.load8_u
          local.set 4
          local.get 3
          i32.const 56
          i32.add
          local.get 0
          i32.const 32
          i32.add
          local.tee 5
          local.get 1
          local.get 2
          call $_*fmt.fmt_.truncateString
          local.get 3
          i32.load offset=60
          local.set 6
          local.get 3
          i32.load offset=56
          local.set 7
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 0
            i32.const 40
            i32.add
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            local.get 7
            local.set 8
            local.get 6
            local.set 1
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 1
                  i32.lt_s
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 32
                  i32.add
                  local.get 8
                  local.get 1
                  call $unicode/utf8.DecodeRuneInString
                  block  ;; label = @8
                    local.get 1
                    local.get 3
                    i32.load offset=36
                    local.tee 2
                    i32.ge_u
                    br_if 0 (;@8;)
                    call $runtime.slicePanic
                    unreachable
                  end
                  local.get 3
                  i32.load offset=32
                  local.set 4
                  local.get 1
                  local.get 2
                  i32.sub
                  local.set 1
                  local.get 8
                  local.get 2
                  i32.add
                  local.set 8
                  local.get 2
                  i32.const 1
                  i32.le_s
                  br_if 1 (;@6;)
                  local.get 4
                  i32.const 65279
                  i32.ne
                  br_if 2 (;@5;)
                  br 3 (;@4;)
                end
                local.get 3
                i32.const 48
                i32.add
                i32.const 70391
                i32.const 1
                local.get 7
                local.get 6
                call $runtime.stringConcat
                local.get 3
                i32.const 40
                i32.add
                local.get 3
                i32.load offset=48
                local.get 3
                i32.load offset=52
                i32.const 70391
                i32.const 1
                call $runtime.stringConcat
                local.get 5
                local.get 3
                i32.load offset=40
                local.get 3
                i32.load offset=44
                call $_*fmt.fmt_.padString
                br 5 (;@1;)
              end
              local.get 4
              i32.const 65533
              i32.eq
              br_if 1 (;@4;)
              block  ;; label = @6
                local.get 4
                i32.const 31
                i32.gt_s
                br_if 0 (;@6;)
                local.get 4
                i32.const 9
                i32.ne
                br_if 2 (;@4;)
              end
              local.get 4
              i32.const 96
              i32.eq
              br_if 1 (;@4;)
              local.get 4
              i32.const 127
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 0
          i32.const 56
          i32.add
          local.set 1
          block  ;; label = @4
            local.get 0
            i32.const 39
            i32.add
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            local.get 7
            local.get 6
            i32.const 1
            call $strconv.appendQuotedWith
            local.get 5
            local.get 3
            i32.load
            local.get 3
            i32.load offset=4
            call $_*fmt.fmt_.pad
            br 3 (;@1;)
          end
          local.get 3
          i32.const 16
          i32.add
          local.get 1
          local.get 7
          local.get 6
          i32.const 0
          call $strconv.appendQuotedWith
          local.get 5
          local.get 3
          i32.load offset=16
          local.get 3
          i32.load offset=20
          call $_*fmt.fmt_.pad
          br 2 (;@1;)
        end
        call $runtime.nilPanic
        unreachable
      end
      local.get 5
      local.get 7
      local.get 6
      call $_*fmt.fmt_.padString
    end
    local.get 3
    i32.const 64
    i32.add
    global.set 0)
  (func $_*fmt.fmt_.truncateString (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 5
        i32.add
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=20
        local.set 4
        i32.const 0
        local.set 1
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 3
              i32.lt_s
              br_if 0 (;@5;)
              local.get 1
              local.set 5
              i32.const 0
              local.set 6
              i32.const 0
              local.set 1
              br 1 (;@4;)
            end
            i32.const 1
            local.set 6
            i32.const 1
            local.set 5
            block  ;; label = @5
              local.get 2
              local.get 1
              i32.add
              local.tee 7
              i32.load8_s
              local.tee 8
              i32.const -1
              i32.gt_s
              br_if 0 (;@5;)
              local.get 3
              local.get 1
              i32.sub
              local.set 9
              block  ;; label = @6
                local.get 8
                i32.const -32
                i32.and
                i32.const -64
                i32.ne
                br_if 0 (;@6;)
                i32.const 1
                local.set 5
                local.get 9
                i32.const 2
                i32.lt_u
                br_if 1 (;@5;)
                i32.const 1
                i32.const 2
                local.get 7
                i32.const 1
                i32.add
                i32.load8_u
                i32.const 192
                i32.and
                i32.const 128
                i32.ne
                select
                i32.const 1
                local.get 8
                i32.const 30
                i32.and
                select
                local.set 5
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 8
                i32.const -16
                i32.and
                i32.const -32
                i32.ne
                br_if 0 (;@6;)
                i32.const 1
                local.set 5
                local.get 9
                i32.const 3
                i32.lt_u
                br_if 1 (;@5;)
                i32.const 1
                local.set 5
                local.get 7
                i32.const 1
                i32.add
                i32.load8_u
                local.tee 9
                i32.const 192
                i32.and
                i32.const 128
                i32.ne
                br_if 1 (;@5;)
                local.get 7
                i32.const 2
                i32.add
                i32.load8_u
                i32.const 192
                i32.and
                i32.const 128
                i32.ne
                br_if 1 (;@5;)
                i32.const 1
                i32.const 1
                i32.const 3
                local.get 9
                i32.const 63
                i32.and
                i32.const 6
                i32.shl
                local.get 8
                i32.const 15
                i32.and
                i32.const 12
                i32.shl
                i32.or
                local.tee 5
                i32.const 63488
                i32.and
                i32.const 55296
                i32.eq
                select
                local.get 5
                i32.const 2048
                i32.lt_u
                select
                local.set 5
                br 1 (;@5;)
              end
              i32.const 1
              local.set 5
              local.get 9
              i32.const 4
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 1
              local.set 5
              local.get 8
              i32.const 248
              i32.and
              i32.const 240
              i32.ne
              br_if 0 (;@5;)
              i32.const 1
              local.set 5
              local.get 7
              i32.const 1
              i32.add
              i32.load8_u
              local.tee 9
              i32.const 192
              i32.and
              i32.const 128
              i32.ne
              br_if 0 (;@5;)
              local.get 7
              i32.const 2
              i32.add
              i32.load8_u
              local.tee 10
              i32.const 192
              i32.and
              i32.const 128
              i32.ne
              br_if 0 (;@5;)
              local.get 7
              i32.const 3
              i32.add
              i32.load8_u
              local.tee 7
              i32.const 192
              i32.and
              i32.const 128
              i32.ne
              br_if 0 (;@5;)
              i32.const 4
              i32.const 1
              local.get 9
              i32.const 63
              i32.and
              i32.const 12
              i32.shl
              local.get 8
              i32.const 7
              i32.and
              i32.const 18
              i32.shl
              i32.or
              local.get 10
              i32.const 63
              i32.and
              i32.const 6
              i32.shl
              i32.or
              local.get 7
              i32.const 63
              i32.and
              i32.or
              i32.const -65536
              i32.add
              i32.const 1048576
              i32.lt_u
              select
              local.set 5
            end
            local.get 5
            local.get 1
            i32.add
            local.set 5
          end
          local.get 1
          local.set 8
          local.get 6
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 5
          local.set 1
          local.get 4
          i32.const -1
          i32.add
          local.tee 4
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
        end
        local.get 8
        local.get 3
        i32.le_u
        br_if 1 (;@1;)
        call $runtime.slicePanic
        unreachable
      end
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      return
    end
    local.get 0
    local.get 8
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func $_*fmt.pp_.handleMethods (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        local.get 0
        i32.load8_u offset=127
        br_if 1 (;@1;)
        local.get 0
        i32.const 44
        i32.add
        i32.load8_u
        br_if 1 (;@1;)
        local.get 0
        i32.const 16
        i32.add
        i32.load
        local.set 3
        i32.const 0
        local.set 2
        block  ;; label = @3
          local.get 0
          i32.load offset=12
          local.tee 4
          call $error$typeassert
          i32.const 1
          i32.and
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 44
          i32.add
          i32.const 5
          i32.store
          local.get 1
          i32.const 16
          i32.add
          i32.const 16
          i32.add
          local.get 3
          i32.store
          local.get 1
          i32.const 70326
          i32.store offset=40
          local.get 1
          i32.const 118
          i32.store offset=36
          local.get 1
          local.get 4
          i32.store offset=28
          local.get 1
          local.get 0
          i32.store offset=24
          local.get 1
          i64.const 0
          i64.store offset=16
          local.get 1
          i32.const 8
          i32.add
          local.get 3
          i32.const 0
          local.get 5
          select
          local.get 4
          i32.const 0
          local.get 5
          select
          call $_error_.Error
          local.get 0
          local.get 1
          i32.load offset=8
          local.get 1
          i32.load offset=12
          call $_*fmt.pp_.fmtString
          local.get 1
          i32.const 16
          i32.add
          local.set 0
          loop  ;; label = @4
            block  ;; label = @5
              local.get 0
              br_if 0 (;@5;)
              i32.const 1
              local.set 2
              br 4 (;@1;)
            end
            local.get 0
            i32.load offset=4
            local.set 0
            br 0 (;@4;)
          end
        end
        local.get 4
        i32.const 88
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        i32.const 76
        i32.add
        i32.const 6
        i32.store
        local.get 1
        i32.const 64
        i32.add
        local.get 3
        i32.store
        local.get 1
        i32.const 70331
        i32.store offset=72
        local.get 1
        i32.const 118
        i32.store offset=68
        local.get 1
        i32.const 88
        i32.store offset=60
        local.get 1
        local.get 0
        i32.store offset=56
        local.get 1
        i64.const 0
        i64.store offset=48
        i32.const 1
        local.set 2
        local.get 0
        i32.const 66056
        i32.const 1
        call $_*fmt.pp_.fmtString
        local.get 1
        i32.const 48
        i32.add
        local.set 0
        loop  ;; label = @3
          local.get 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.load offset=4
          local.set 0
          br 0 (;@3;)
        end
      end
      call $runtime.nilPanic
      unreachable
    end
    local.get 1
    i32.const 80
    i32.add
    global.set 0
    local.get 2)
  (func $error$typeassert (type 1) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.const -997
      i32.add
      local.tee 0
      i32.const 22
      i32.rotl
      i32.const 9
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 519
      local.get 0
      i32.const 10
      i32.shr_u
      i32.const 1023
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      return
    end
    i32.const 0)
  (func $_error_.Error (type 4) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const -997
                i32.add
                i32.const 22
                i32.rotl
                br_table 3 (;@3;) 2 (;@4;) 1 (;@5;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 0 (;@6;) 4 (;@2;)
              end
              local.get 1
              i32.eqz
              br_if 3 (;@2;)
              local.get 0
              local.get 1
              i64.load align=4
              i64.store
              local.get 3
              i32.const 80
              i32.add
              global.set 0
              return
            end
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
            local.get 3
            i32.const 40
            i32.add
            local.get 1
            i32.load
            local.get 1
            i32.load offset=4
            i32.const 70526
            i32.const 1
            call $runtime.stringConcat
            local.get 3
            i32.const 32
            i32.add
            local.get 3
            i32.load offset=40
            local.get 3
            i32.load offset=44
            local.get 1
            i32.load offset=8
            local.get 1
            i32.load offset=12
            call $runtime.stringConcat
            local.get 3
            i32.const 24
            i32.add
            local.get 3
            i32.load offset=32
            local.get 3
            i32.load offset=36
            i32.const 70527
            i32.const 2
            call $runtime.stringConcat
            local.get 3
            i32.load offset=28
            local.set 2
            local.get 3
            i32.load offset=24
            local.set 4
            local.get 3
            i32.const 16
            i32.add
            local.get 1
            i32.load offset=20
            local.get 1
            i32.load offset=16
            call $_error_.Error
            local.get 3
            i32.const 8
            i32.add
            local.get 4
            local.get 2
            local.get 3
            i32.load offset=16
            local.get 3
            i32.load offset=20
            call $runtime.stringConcat
            local.get 0
            local.get 3
            i32.load offset=8
            i32.store
            local.get 0
            local.get 3
            i32.load offset=12
            i32.store offset=4
            local.get 3
            i32.const 80
            i32.add
            global.set 0
            return
          end
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.const 56
          i32.add
          i32.const 70208
          i32.const 30
          local.get 1
          i32.load
          local.get 1
          i32.load offset=4
          call $runtime.stringConcat
          local.get 3
          i32.const 48
          i32.add
          local.get 3
          i32.load offset=56
          local.get 3
          i32.load offset=60
          i32.const 70271
          i32.const 16
          call $runtime.stringConcat
          local.get 0
          local.get 3
          i32.load offset=48
          i32.store
          local.get 0
          local.get 3
          i32.load offset=52
          i32.store offset=4
          local.get 3
          i32.const 80
          i32.add
          global.set 0
          return
        end
        local.get 1
        br_if 1 (;@1;)
      end
      call $runtime.nilPanic
      unreachable
    end
    local.get 3
    i32.const 72
    i32.add
    i32.const 70240
    i32.const 31
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    call $runtime.stringConcat
    local.get 3
    i32.const 64
    i32.add
    local.get 3
    i32.load offset=72
    local.get 3
    i32.load offset=76
    i32.const 70271
    i32.const 16
    call $runtime.stringConcat
    local.get 0
    local.get 3
    i32.load offset=64
    i32.store
    local.get 0
    local.get 3
    i32.load offset=68
    i32.store offset=4
    local.get 3
    i32.const 80
    i32.add
    global.set 0)
  (func $_*fmt.pp_.printArg (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    i64.const 0
    i64.store offset=20 align=4
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    i32.const 16
    i32.add
    local.get 2
    i32.store
    local.get 0
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const -26
                    i32.add
                    br_table 5 (;@3;) 1 (;@7;) 4 (;@4;) 1 (;@7;) 3 (;@5;) 1 (;@7;) 2 (;@6;) 0 (;@8;)
                  end
                  block  ;; label = @8
                    local.get 1
                    br_table 0 (;@8;) 1 (;@7;) 6 (;@2;) 1 (;@7;)
                  end
                  local.get 0
                  i32.const 32
                  i32.add
                  i32.const 70386
                  i32.const 5
                  call $_*fmt.fmt_.padString
                  br 6 (;@1;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      local.get 1
                                                      i32.const 33
                                                      i32.gt_s
                                                      br_if 0 (;@25;)
                                                      local.get 1
                                                      i32.const -4
                                                      i32.add
                                                      br_table 2 (;@23;) 1 (;@24;) 3 (;@22;) 1 (;@24;) 4 (;@21;) 1 (;@24;) 5 (;@20;) 1 (;@24;) 6 (;@19;) 1 (;@24;) 7 (;@18;) 1 (;@24;) 8 (;@17;) 1 (;@24;) 9 (;@16;) 1 (;@24;) 10 (;@15;) 1 (;@24;) 11 (;@14;) 1 (;@24;) 12 (;@13;) 1 (;@24;)
                                                    end
                                                    local.get 1
                                                    i32.const 34
                                                    i32.eq
                                                    br_if 12 (;@12;)
                                                    local.get 1
                                                    i32.const 223
                                                    i32.eq
                                                    br_if 14 (;@10;)
                                                    local.get 1
                                                    i32.const 519
                                                    i32.eq
                                                    br_if 13 (;@11;)
                                                  end
                                                  local.get 0
                                                  call $_*fmt.pp_.handleMethods
                                                  i32.const 1
                                                  i32.and
                                                  br_if 22 (;@1;)
                                                  local.get 0
                                                  local.get 1
                                                  local.get 2
                                                  i32.const 2
                                                  i32.const 0
                                                  call $_*fmt.pp_.printValue
                                                  br 22 (;@1;)
                                                end
                                                local.get 0
                                                local.get 2
                                                i64.extend_i32_s
                                                i32.const 1
                                                call $_*fmt.pp_.fmtInteger
                                                br 21 (;@1;)
                                              end
                                              local.get 0
                                              local.get 2
                                              i64.extend_i32_u
                                              i64.const 56
                                              i64.shl
                                              i64.const 56
                                              i64.shr_s
                                              i32.const 1
                                              call $_*fmt.pp_.fmtInteger
                                              br 20 (;@1;)
                                            end
                                            local.get 0
                                            local.get 2
                                            i64.extend_i32_u
                                            i64.const 48
                                            i64.shl
                                            i64.const 48
                                            i64.shr_s
                                            i32.const 1
                                            call $_*fmt.pp_.fmtInteger
                                            br 19 (;@1;)
                                          end
                                          local.get 0
                                          local.get 2
                                          i64.extend_i32_s
                                          i32.const 1
                                          call $_*fmt.pp_.fmtInteger
                                          br 18 (;@1;)
                                        end
                                        local.get 0
                                        local.get 2
                                        i64.load
                                        i32.const 1
                                        call $_*fmt.pp_.fmtInteger
                                        br 17 (;@1;)
                                      end
                                      local.get 0
                                      local.get 2
                                      i64.extend_i32_u
                                      i32.const 0
                                      call $_*fmt.pp_.fmtInteger
                                      br 16 (;@1;)
                                    end
                                    local.get 0
                                    local.get 2
                                    i32.const 255
                                    i32.and
                                    i64.extend_i32_u
                                    i32.const 0
                                    call $_*fmt.pp_.fmtInteger
                                    br 15 (;@1;)
                                  end
                                  local.get 0
                                  local.get 2
                                  i32.const 65535
                                  i32.and
                                  i64.extend_i32_u
                                  i32.const 0
                                  call $_*fmt.pp_.fmtInteger
                                  br 14 (;@1;)
                                end
                                local.get 0
                                local.get 2
                                i64.extend_i32_u
                                i32.const 0
                                call $_*fmt.pp_.fmtInteger
                                br 13 (;@1;)
                              end
                              local.get 0
                              local.get 2
                              i64.load
                              i32.const 0
                              call $_*fmt.pp_.fmtInteger
                              br 12 (;@1;)
                            end
                            local.get 0
                            local.get 2
                            i64.extend_i32_u
                            i32.const 0
                            call $_*fmt.pp_.fmtInteger
                            br 11 (;@1;)
                          end
                          local.get 0
                          local.get 2
                          i32.load
                          local.get 2
                          i32.load offset=4
                          call $_*fmt.pp_.fmtString
                          br 10 (;@1;)
                        end
                        local.get 2
                        i32.load offset=4
                        local.set 4
                        local.get 2
                        i32.load
                        local.set 2
                        local.get 0
                        i32.const 44
                        i32.add
                        i32.load8_u
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 0
                        i32.const 70337
                        i32.const 6
                        call $_*fmt.buffer_.writeString
                        local.get 2
                        br_if 2 (;@8;)
                        local.get 0
                        i32.const 70379
                        i32.const 5
                        call $_*fmt.buffer_.writeString
                        br 9 (;@1;)
                      end
                      local.get 2
                      i32.load8_u offset=8
                      local.set 1
                      local.get 2
                      i32.load offset=4
                      local.set 4
                      block  ;; label = @10
                        local.get 2
                        i32.load
                        local.tee 2
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const 8
                        i32.add
                        local.get 2
                        local.get 4
                        local.get 1
                        call $_reflect.Value_.Interface
                        local.get 0
                        local.get 3
                        i64.load offset=8
                        i64.store offset=12 align=4
                        local.get 0
                        call $_*fmt.pp_.handleMethods
                        i32.const 1
                        i32.and
                        br_if 9 (;@1;)
                      end
                      local.get 0
                      local.get 2
                      local.get 4
                      local.get 1
                      i32.const 0
                      call $_*fmt.pp_.printValue
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.const 32
                    i32.add
                    local.set 5
                    local.get 0
                    i32.const 91
                    call $_*fmt.buffer_.writeByte
                    local.get 4
                    i32.const 0
                    local.get 4
                    i32.const 0
                    i32.gt_s
                    select
                    local.set 6
                    i32.const 0
                    local.set 1
                    block  ;; label = @9
                      loop  ;; label = @10
                        local.get 6
                        local.get 1
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 4
                        local.get 1
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 2
                        local.get 1
                        i32.add
                        i64.load8_u
                        local.set 7
                        block  ;; label = @11
                          local.get 1
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 32
                          call $_*fmt.buffer_.writeByte
                        end
                        local.get 5
                        local.get 7
                        i32.const 10
                        i32.const 0
                        i32.const 70304
                        call $_*fmt.fmt_.fmtInteger
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 1
                        br 0 (;@10;)
                      end
                    end
                    local.get 0
                    i32.const 93
                    call $_*fmt.buffer_.writeByte
                    br 7 (;@1;)
                  end
                  local.get 0
                  i32.const 123
                  call $_*fmt.buffer_.writeByte
                  i32.const 0
                  local.set 1
                  local.get 4
                  i32.const 0
                  local.get 4
                  i32.const 0
                  i32.gt_s
                  select
                  local.set 6
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 6
                      local.get 1
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 4
                      local.get 1
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 2
                      local.get 1
                      i32.add
                      i64.load8_u
                      local.set 7
                      block  ;; label = @10
                        local.get 1
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 70384
                        i32.const 2
                        call $_*fmt.buffer_.writeString
                      end
                      local.get 0
                      local.get 7
                      i32.const 1
                      call $_*fmt.pp_.fmt0x64
                      local.get 1
                      i32.const 1
                      i32.add
                      local.set 1
                      br 0 (;@9;)
                    end
                  end
                  local.get 0
                  i32.const 125
                  call $_*fmt.buffer_.writeByte
                  br 6 (;@1;)
                end
                call $runtime.lookupPanic
                unreachable
              end
              local.get 0
              local.get 2
              f64.load
              local.get 2
              f64.load offset=8
              i32.const 128
              call $_*fmt.pp_.fmtComplex
              br 4 (;@1;)
            end
            local.get 0
            local.get 2
            f32.load
            f64.promote_f32
            local.get 2
            f32.load offset=4
            f64.promote_f32
            i32.const 64
            call $_*fmt.pp_.fmtComplex
            br 3 (;@1;)
          end
          local.get 0
          local.get 2
          f64.load
          i32.const 64
          call $_*fmt.pp_.fmtFloat
          br 2 (;@1;)
        end
        local.get 0
        local.get 2
        f32.reinterpret_i32
        f64.promote_f32
        i32.const 32
        call $_*fmt.pp_.fmtFloat
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i32.const 1
      i32.and
      call $_*fmt.pp_.fmtBool
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func $_*fmt.pp_.printValue (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 176
    i32.sub
    local.tee 5
    global.set 0
    local.get 0
    i32.const 24
    i32.add
    local.set 6
    local.get 0
    i32.const 28
    i32.add
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.const 0
                      i32.gt_s
                      br_if 1 (;@8;)
                    end
                    local.get 0
                    i32.eqz
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                  local.get 0
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 168
                  i32.add
                  local.get 1
                  local.get 2
                  local.get 3
                  call $_reflect.Value_.Interface
                  local.get 0
                  local.get 5
                  i64.load offset=168
                  i64.store offset=12 align=4
                  local.get 0
                  call $_*fmt.pp_.handleMethods
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 1 (;@6;)
                  br 6 (;@1;)
                end
                call $runtime.nilPanic
                unreachable
              end
              local.get 0
              local.get 1
              i32.store offset=20
              local.get 0
              i64.const 0
              i64.store offset=12 align=4
              local.get 6
              local.get 2
              i32.store
              local.get 7
              local.get 3
              i32.store8
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        local.get 1
                                                        call $_reflect.Type_.Kind
                                                        local.tee 8
                                                        br_table 0 (;@26;) 1 (;@25;) 2 (;@24;) 2 (;@24;) 2 (;@24;) 2 (;@24;) 2 (;@24;) 3 (;@23;) 3 (;@23;) 3 (;@23;) 3 (;@23;) 3 (;@23;) 3 (;@23;) 4 (;@22;) 5 (;@21;) 6 (;@20;) 7 (;@19;) 8 (;@18;) 20 (;@6;) 20 (;@6;) 11 (;@15;) 13 (;@13;) 12 (;@14;) 12 (;@14;) 20 (;@6;) 9 (;@17;) 10 (;@16;) 14 (;@12;)
                                                      end
                                                      local.get 4
                                                      i32.eqz
                                                      br_if 17 (;@8;)
                                                      local.get 0
                                                      i32.const 70386
                                                      i32.const 5
                                                      call $_*fmt.buffer_.writeString
                                                      br 24 (;@1;)
                                                    end
                                                    local.get 0
                                                    local.get 1
                                                    local.get 2
                                                    local.get 3
                                                    call $_reflect.Value_.Bool
                                                    call $_*fmt.pp_.fmtBool
                                                    br 23 (;@1;)
                                                  end
                                                  local.get 0
                                                  local.get 1
                                                  local.get 2
                                                  local.get 3
                                                  call $_reflect.Value_.Int
                                                  i32.const 1
                                                  call $_*fmt.pp_.fmtInteger
                                                  br 22 (;@1;)
                                                end
                                                local.get 0
                                                local.get 1
                                                local.get 2
                                                local.get 3
                                                call $_reflect.Value_.Uint
                                                i32.const 0
                                                call $_*fmt.pp_.fmtInteger
                                                br 21 (;@1;)
                                              end
                                              local.get 0
                                              local.get 1
                                              local.get 2
                                              local.get 3
                                              call $_reflect.Value_.Float
                                              i32.const 32
                                              call $_*fmt.pp_.fmtFloat
                                              br 20 (;@1;)
                                            end
                                            local.get 0
                                            local.get 1
                                            local.get 2
                                            local.get 3
                                            call $_reflect.Value_.Float
                                            i32.const 64
                                            call $_*fmt.pp_.fmtFloat
                                            br 19 (;@1;)
                                          end
                                          local.get 5
                                          i32.const 8
                                          i32.add
                                          local.get 1
                                          local.get 2
                                          call $_reflect.Value_.Complex
                                          local.get 0
                                          local.get 5
                                          f64.load offset=8
                                          local.get 5
                                          f64.load offset=16
                                          i32.const 64
                                          call $_*fmt.pp_.fmtComplex
                                          br 18 (;@1;)
                                        end
                                        local.get 5
                                        i32.const 24
                                        i32.add
                                        local.get 1
                                        local.get 2
                                        call $_reflect.Value_.Complex
                                        local.get 0
                                        local.get 5
                                        f64.load offset=24
                                        local.get 5
                                        f64.load offset=32
                                        i32.const 128
                                        call $_*fmt.pp_.fmtComplex
                                        br 17 (;@1;)
                                      end
                                      local.get 5
                                      i32.const 40
                                      i32.add
                                      local.get 1
                                      local.get 2
                                      call $_reflect.Value_.String
                                      local.get 0
                                      local.get 5
                                      i32.load offset=40
                                      local.get 5
                                      i32.load offset=44
                                      call $_*fmt.pp_.fmtString
                                      br 16 (;@1;)
                                    end
                                    block  ;; label = @17
                                      local.get 0
                                      i32.const 44
                                      i32.add
                                      i32.load8_u
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 0
                                      i32.const 66056
                                      i32.const 1
                                      call $_*fmt.buffer_.writeString
                                      local.get 1
                                      local.get 2
                                      local.get 3
                                      call $_reflect.Value_.IsNil
                                      i32.const 1
                                      i32.and
                                      br_if 6 (;@11;)
                                      local.get 0
                                      i32.const 123
                                      call $_*fmt.buffer_.writeByte
                                      br 8 (;@9;)
                                    end
                                    local.get 0
                                    i32.const 70375
                                    i32.const 4
                                    call $_*fmt.buffer_.writeString
                                    br 7 (;@9;)
                                  end
                                  block  ;; label = @16
                                    local.get 0
                                    i32.const 44
                                    i32.add
                                    i32.load8_u
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 0
                                    i32.const 66056
                                    i32.const 1
                                    call $_*fmt.buffer_.writeString
                                  end
                                  local.get 0
                                  i32.const 123
                                  call $_*fmt.buffer_.writeByte
                                  local.get 4
                                  i32.const 1
                                  i32.add
                                  local.set 9
                                  i32.const 0
                                  local.set 4
                                  br 13 (;@2;)
                                end
                                local.get 5
                                i32.const 104
                                i32.add
                                local.get 1
                                local.get 2
                                local.get 3
                                call $_reflect.Value_.Elem
                                block  ;; label = @15
                                  local.get 5
                                  i32.load offset=104
                                  local.tee 1
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.load8_u offset=112
                                  local.set 3
                                  local.get 5
                                  i32.load offset=108
                                  local.set 2
                                  local.get 4
                                  i32.const 1
                                  i32.add
                                  local.set 4
                                  br 10 (;@5;)
                                end
                                block  ;; label = @15
                                  local.get 0
                                  i32.const 44
                                  i32.add
                                  i32.load8_u
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 0
                                  i32.const 66056
                                  i32.const 1
                                  call $_*fmt.buffer_.writeString
                                  local.get 0
                                  i32.const 70379
                                  i32.const 5
                                  call $_*fmt.buffer_.writeString
                                  br 14 (;@1;)
                                end
                                local.get 0
                                i32.const 70386
                                i32.const 5
                                call $_*fmt.buffer_.writeString
                                br 13 (;@1;)
                              end
                              local.get 0
                              i32.const 44
                              i32.add
                              i32.load8_u
                              i32.eqz
                              br_if 9 (;@4;)
                              local.get 0
                              i32.const 66056
                              i32.const 1
                              call $_*fmt.buffer_.writeString
                              block  ;; label = @14
                                local.get 8
                                i32.const 22
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 1
                                local.get 2
                                local.get 3
                                call $_reflect.Value_.IsNil
                                i32.const 1
                                i32.and
                                br_if 4 (;@10;)
                              end
                              local.get 0
                              i32.const 123
                              call $_*fmt.buffer_.writeByte
                              local.get 4
                              i32.const 1
                              i32.add
                              local.set 6
                              i32.const 0
                              local.set 4
                              br 10 (;@3;)
                            end
                            local.get 4
                            i32.eqz
                            br_if 5 (;@7;)
                            br 6 (;@6;)
                          end
                          block  ;; label = @12
                            local.get 1
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 63
                            call $_*fmt.buffer_.writeByte
                            local.get 0
                            i32.const 66056
                            i32.const 1
                            call $_*fmt.buffer_.writeString
                            local.get 0
                            i32.const 63
                            call $_*fmt.buffer_.writeByte
                            br 11 (;@1;)
                          end
                          local.get 0
                          i32.const 70386
                          i32.const 5
                          call $_*fmt.buffer_.writeString
                          br 10 (;@1;)
                        end
                        local.get 0
                        i32.const 70379
                        i32.const 5
                        call $_*fmt.buffer_.writeString
                        local.get 5
                        i32.const 176
                        i32.add
                        global.set 0
                        return
                      end
                      local.get 0
                      i32.const 70379
                      i32.const 5
                      call $_*fmt.buffer_.writeString
                      local.get 5
                      i32.const 176
                      i32.add
                      global.set 0
                      return
                    end
                    block  ;; label = @9
                      local.get 1
                      local.get 2
                      call $_reflect.Value_.Len
                      local.tee 1
                      i32.const -1
                      i32.le_s
                      br_if 0 (;@9;)
                      local.get 1
                      i32.const 12
                      i32.mul
                      local.tee 1
                      call $runtime.alloc
                      drop
                      local.get 1
                      call $runtime.alloc
                      drop
                      call $_reflect.Value_.MapRange
                      unreachable
                    end
                    call $runtime.slicePanic
                    unreachable
                  end
                  local.get 0
                  i32.const 70352
                  i32.const 23
                  call $_*fmt.buffer_.writeString
                  br 6 (;@1;)
                end
                local.get 1
                local.get 2
                local.get 3
                call $_reflect.Value_.Pointer
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.const 152
                i32.add
                local.get 1
                local.get 2
                local.get 3
                call $_reflect.Value_.Elem
                local.get 5
                i32.load8_u offset=160
                local.set 8
                local.get 5
                i32.load offset=156
                local.set 9
                local.get 5
                i32.load offset=152
                local.tee 10
                call $_reflect.Type_.Kind
                local.tee 4
                i32.const 26
                i32.gt_u
                br_if 0 (;@6;)
                i32.const 1
                local.get 4
                i32.shl
                i32.const 113246208
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 38
                call $_*fmt.buffer_.writeByte
                i32.const 1
                local.set 4
                local.get 10
                local.set 1
                local.get 9
                local.set 2
                local.get 8
                local.set 3
                br 1 (;@5;)
              end
            end
            local.get 1
            local.get 2
            local.get 3
            call $_reflect.Value_.Pointer
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 44
                  i32.add
                  i32.load8_u
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 40
                  call $_*fmt.buffer_.writeByte
                  local.get 0
                  i32.const 66056
                  i32.const 1
                  call $_*fmt.buffer_.writeString
                  local.get 0
                  i32.const 70321
                  i32.const 2
                  call $_*fmt.buffer_.writeString
                  local.get 1
                  br_if 1 (;@6;)
                  local.get 0
                  i32.const 70323
                  i32.const 3
                  call $_*fmt.buffer_.writeString
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  local.get 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 1
                  i64.extend_i32_u
                  local.get 0
                  i32.const 40
                  i32.add
                  i32.load8_u
                  i32.const 1
                  i32.xor
                  call $_*fmt.pp_.fmt0x64
                  br 6 (;@1;)
                end
                local.get 0
                i32.const 32
                i32.add
                i32.const 70386
                i32.const 5
                call $_*fmt.fmt_.padString
                br 5 (;@1;)
              end
              local.get 0
              local.get 1
              i64.extend_i32_u
              i32.const 1
              call $_*fmt.pp_.fmt0x64
            end
            local.get 0
            i32.const 41
            call $_*fmt.buffer_.writeByte
            br 3 (;@1;)
          end
          local.get 0
          i32.const 91
          call $_*fmt.buffer_.writeByte
          local.get 4
          i32.const 1
          i32.add
          local.set 6
          i32.const 0
          local.set 4
          block  ;; label = @4
            loop  ;; label = @5
              local.get 4
              local.get 1
              local.get 2
              call $_reflect.Value_.Len
              i32.ge_s
              br_if 1 (;@4;)
              block  ;; label = @6
                local.get 4
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 32
                call $_*fmt.buffer_.writeByte
              end
              local.get 5
              i32.const 136
              i32.add
              local.get 1
              local.get 2
              local.get 3
              local.get 4
              call $_reflect.Value_.Index
              local.get 0
              local.get 5
              i32.load offset=136
              local.get 5
              i32.load offset=140
              local.get 5
              i32.load8_u offset=144
              local.get 6
              call $_*fmt.pp_.printValue
              local.get 4
              i32.const 1
              i32.add
              local.set 4
              br 0 (;@5;)
            end
          end
          local.get 0
          i32.const 93
          call $_*fmt.buffer_.writeByte
          br 2 (;@1;)
        end
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            local.get 1
            local.get 2
            call $_reflect.Value_.Len
            i32.ge_s
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.const 70384
              i32.const 2
              call $_*fmt.buffer_.writeString
            end
            local.get 5
            i32.const 120
            i32.add
            local.get 1
            local.get 2
            local.get 3
            local.get 4
            call $_reflect.Value_.Index
            local.get 0
            local.get 5
            i32.load offset=120
            local.get 5
            i32.load offset=124
            local.get 5
            i32.load8_u offset=128
            local.get 6
            call $_*fmt.pp_.printValue
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            br 0 (;@4;)
          end
        end
        local.get 0
        i32.const 125
        call $_*fmt.buffer_.writeByte
        br 1 (;@1;)
      end
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              local.get 1
              call $_reflect.Type_.NumField
              i32.ge_s
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 0
                  i32.load8_u offset=44
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 70384
                  i32.const 2
                  call $_*fmt.buffer_.writeString
                  br 1 (;@6;)
                end
                local.get 0
                i32.const 32
                call $_*fmt.buffer_.writeByte
              end
              local.get 0
              i32.load8_u offset=43
              br_if 1 (;@4;)
              local.get 0
              i32.load8_u offset=44
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 0
            i32.const 125
            call $_*fmt.buffer_.writeByte
            br 3 (;@1;)
          end
          local.get 5
          i32.const 80
          i32.add
          local.get 1
          local.get 4
          call $_reflect.Type_.Field
          local.get 5
          i32.load offset=84
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 5
          i32.load offset=80
          local.get 6
          call $_*fmt.buffer_.writeString
          local.get 0
          i32.const 58
          call $_*fmt.buffer_.writeByte
        end
        local.get 5
        i32.const 64
        i32.add
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        call $_reflect.Value_.Field
        local.get 5
        i32.load8_u offset=72
        local.set 6
        local.get 5
        i32.load offset=68
        local.set 7
        block  ;; label = @3
          local.get 5
          i32.load offset=64
          local.tee 8
          call $_reflect.Type_.Kind
          i32.const 20
          i32.ne
          br_if 0 (;@3;)
          local.get 8
          local.get 7
          local.get 6
          call $_reflect.Value_.IsNil
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 5
          i32.const 48
          i32.add
          local.get 8
          local.get 7
          local.get 6
          call $_reflect.Value_.Elem
          local.get 5
          i32.load8_u offset=56
          local.set 6
          local.get 5
          i32.load offset=52
          local.set 7
          local.get 5
          i32.load offset=48
          local.set 8
        end
        local.get 0
        local.get 8
        local.get 7
        local.get 6
        local.get 9
        call $_*fmt.pp_.printValue
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 5
    i32.const 176
    i32.add
    global.set 0)
  (func $_start (type 3)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    memory.size
    i32.const 16
    i32.shl
    i32.store offset=74976
    i32.const 3685
    call $_reflect.Type_.Elem
    drop
    i32.const 0
    memory.size
    i32.const 16
    i32.shl
    i32.store offset=74976
    i32.const 140
    call $runtime.alloc
    local.tee 1
    i32.const 0
    i32.store8 offset=128
    local.get 1
    i32.const 0
    i32.store16 offset=126 align=1
    local.get 1
    i64.const 0
    i64.store offset=36 align=1
    local.get 1
    i32.const 44
    i32.add
    i32.const 0
    i32.store8
    local.get 1
    local.get 1
    i32.store offset=32
    local.get 1
    i32.const 34
    i32.const 70192
    call $_*fmt.pp_.printArg
    local.get 1
    i32.const 10
    call $_*fmt.buffer_.writeByte
    local.get 0
    i32.const 73624
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    call $_*os.File_.Write
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 65536
      i32.gt_s
      br_if 0 (;@1;)
      local.get 1
      i64.const 0
      i64.store offset=132 align=4
      local.get 1
      i32.const 0
      i32.store offset=4
      local.get 1
      i64.const 0
      i64.store offset=12 align=4
      local.get 1
      i32.const 20
      i32.add
      i64.const 0
      i64.store align=4
      local.get 1
      i32.const 28
      i32.add
      i32.const 0
      i32.store
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func $memmove (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.sub
        local.get 2
        i32.sub
        i32.const 0
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        local.get 2
        call $memcpy
        drop
        br 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.xor
      i32.const 3
      i32.and
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 1
            i32.ge_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.set 3
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.and
              br_if 0 (;@5;)
              local.get 0
              local.set 3
              br 2 (;@3;)
            end
            local.get 0
            local.set 3
            loop  ;; label = @5
              local.get 2
              i32.eqz
              br_if 4 (;@1;)
              local.get 3
              local.get 1
              i32.load8_u
              i32.store8
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              i32.const -1
              i32.add
              local.set 2
              local.get 3
              i32.const 1
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              i32.eqz
              br_if 2 (;@3;)
              br 0 (;@5;)
            end
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.set 3
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 2
                i32.add
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 2
                local.set 3
                br 1 (;@5;)
              end
              local.get 1
              i32.const -1
              i32.add
              local.set 4
              local.get 0
              i32.const -1
              i32.add
              local.set 5
              loop  ;; label = @6
                local.get 2
                i32.eqz
                br_if 5 (;@1;)
                local.get 5
                local.get 2
                i32.add
                local.tee 6
                local.get 4
                local.get 2
                i32.add
                i32.load8_u
                i32.store8
                local.get 2
                i32.const -1
                i32.add
                local.tee 3
                local.set 2
                local.get 6
                i32.const 3
                i32.and
                br_if 0 (;@6;)
              end
            end
            local.get 3
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            i32.const -4
            i32.add
            local.set 2
            local.get 1
            i32.const -4
            i32.add
            local.set 6
            loop  ;; label = @5
              local.get 2
              local.get 3
              i32.add
              local.get 6
              local.get 3
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const -4
              i32.add
              local.tee 3
              i32.const 3
              i32.gt_u
              br_if 0 (;@5;)
            end
          end
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.const -1
          i32.add
          local.set 1
          local.get 0
          i32.const -1
          i32.add
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 3
            i32.add
            local.get 1
            local.get 3
            i32.add
            i32.load8_u
            i32.store8
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 2
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 3
          i32.const 4
          i32.add
          local.set 3
          local.get 2
          i32.const -4
          i32.add
          local.tee 2
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memcpy (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 2
          i32.const -1
          i32.add
          local.set 4
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          local.get 4
          local.set 2
          local.get 1
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 2
      local.set 4
      local.get 0
      local.set 3
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 3
        i32.and
        local.tee 2
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            local.get 1
            i32.load
            i32.store
            local.get 3
            i32.const 4
            i32.add
            local.get 1
            i32.const 4
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 12
            i32.add
            local.get 1
            i32.const 12
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 16
            i32.add
            local.set 3
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 4
            i32.const -16
            i32.add
            local.tee 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 4
          i32.const 8
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i64.load align=4
          i64.store align=4
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 3
          i32.const 8
          i32.add
          local.set 3
        end
        block  ;; label = @3
          local.get 4
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 3
          i32.const 4
          i32.add
          local.set 3
        end
        block  ;; label = @3
          local.get 4
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 3
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 3
          i32.const 2
          i32.add
          local.set 3
          local.get 1
          i32.const 2
          i32.add
          local.set 1
        end
        local.get 4
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 4
        i32.const 32
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const -1
              i32.add
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 3
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 3
            local.get 1
            i32.load
            local.tee 5
            i32.store8
            local.get 3
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 4
            i32.const -3
            i32.add
            local.set 4
            local.get 3
            i32.const 3
            i32.add
            local.set 6
            i32.const 0
            local.set 2
            loop  ;; label = @5
              local.get 6
              local.get 2
              i32.add
              local.tee 3
              local.get 1
              local.get 2
              i32.add
              local.tee 7
              i32.const 4
              i32.add
              i32.load
              local.tee 8
              i32.const 8
              i32.shl
              local.get 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.get 7
              i32.const 8
              i32.add
              i32.load
              local.tee 5
              i32.const 8
              i32.shl
              local.get 8
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 8
              i32.add
              local.get 7
              i32.const 12
              i32.add
              i32.load
              local.tee 8
              i32.const 8
              i32.shl
              local.get 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 12
              i32.add
              local.get 7
              i32.const 16
              i32.add
              i32.load
              local.tee 5
              i32.const 8
              i32.shl
              local.get 8
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 2
              i32.const 16
              i32.add
              local.set 2
              local.get 4
              i32.const -16
              i32.add
              local.tee 4
              i32.const 16
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 6
            local.get 2
            i32.add
            local.set 3
            local.get 1
            local.get 2
            i32.add
            i32.const 3
            i32.add
            local.set 1
            br 2 (;@2;)
          end
          local.get 3
          local.get 1
          i32.load
          local.tee 5
          i32.store8
          local.get 3
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 4
          i32.const -2
          i32.add
          local.set 4
          local.get 3
          i32.const 2
          i32.add
          local.set 6
          i32.const 0
          local.set 2
          loop  ;; label = @4
            local.get 6
            local.get 2
            i32.add
            local.tee 3
            local.get 1
            local.get 2
            i32.add
            local.tee 7
            i32.const 4
            i32.add
            i32.load
            local.tee 8
            i32.const 16
            i32.shl
            local.get 5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 4
            i32.add
            local.get 7
            i32.const 8
            i32.add
            i32.load
            local.tee 5
            i32.const 16
            i32.shl
            local.get 8
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 7
            i32.const 12
            i32.add
            i32.load
            local.tee 8
            i32.const 16
            i32.shl
            local.get 5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 12
            i32.add
            local.get 7
            i32.const 16
            i32.add
            i32.load
            local.tee 5
            i32.const 16
            i32.shl
            local.get 8
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 2
            i32.const 16
            i32.add
            local.set 2
            local.get 4
            i32.const -16
            i32.add
            local.tee 4
            i32.const 17
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 6
          local.get 2
          i32.add
          local.set 3
          local.get 1
          local.get 2
          i32.add
          i32.const 2
          i32.add
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        local.get 1
        i32.load
        local.tee 5
        i32.store8
        local.get 4
        i32.const -1
        i32.add
        local.set 4
        local.get 3
        i32.const 1
        i32.add
        local.set 6
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 6
          local.get 2
          i32.add
          local.tee 3
          local.get 1
          local.get 2
          i32.add
          local.tee 7
          i32.const 4
          i32.add
          i32.load
          local.tee 8
          i32.const 24
          i32.shl
          local.get 5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 4
          i32.add
          local.get 7
          i32.const 8
          i32.add
          i32.load
          local.tee 5
          i32.const 24
          i32.shl
          local.get 8
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 8
          i32.add
          local.get 7
          i32.const 12
          i32.add
          i32.load
          local.tee 8
          i32.const 24
          i32.shl
          local.get 5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 12
          i32.add
          local.get 7
          i32.const 16
          i32.add
          i32.load
          local.tee 5
          i32.const 24
          i32.shl
          local.get 8
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 2
          i32.const 16
          i32.add
          local.set 2
          local.get 4
          i32.const -16
          i32.add
          local.tee 4
          i32.const 18
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 6
        local.get 2
        i32.add
        local.set 3
        local.get 1
        local.get 2
        i32.add
        i32.const 1
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 16
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 3
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 3
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 3
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 3
        local.get 1
        i32.load8_u offset=8
        i32.store8 offset=8
        local.get 3
        local.get 1
        i32.load8_u offset=9
        i32.store8 offset=9
        local.get 3
        local.get 1
        i32.load8_u offset=10
        i32.store8 offset=10
        local.get 3
        local.get 1
        i32.load8_u offset=11
        i32.store8 offset=11
        local.get 3
        local.get 1
        i32.load8_u offset=12
        i32.store8 offset=12
        local.get 3
        local.get 1
        i32.load8_u offset=13
        i32.store8 offset=13
        local.get 3
        local.get 1
        i32.load8_u offset=14
        i32.store8 offset=14
        local.get 3
        local.get 1
        i32.load8_u offset=15
        i32.store8 offset=15
        local.get 3
        i32.const 16
        i32.add
        local.set 3
        local.get 1
        i32.const 16
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 8
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 3
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 3
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 3
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        local.get 1
        i32.const 8
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 4
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        i32.const 4
        i32.add
        local.set 3
        local.get 1
        i32.const 4
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        i32.const 2
        i32.add
        local.set 3
        local.get 1
        i32.const 2
        i32.add
        local.set 1
      end
      local.get 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.load8_u
      i32.store8
    end
    local.get 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 65536))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (data (;0;) (i32.const 65536) "\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\13\03\03\03\03\03\03\03\03\03\03\03\03#\03\034\04\04\04D\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\80\bf\a0\bf\80\9f\90\bf\80\8f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00unimplemented: alignment of type \01\01\00 \00\00\00\00\00\00\00\00\00\00\00unimplemented: (reflect.Type).Elem()\00\00\00\00P\01\01\00$\00\00\00Field\00\00\00\00\00\00\00\00\00\00\00reflect: field index out of range\00\00\00\00\00\00\00\90\01\01\00!\00\00\00<unimplemented>NumField\00\00\00\00\00\00\00\00\00unimplemented: size of type\00\00\00\00\00\e0\01\01\00\1b\00\00\00TBoolComplexElemFloat\00\00\00reflect: slice index out of range\00\00\00\00\00\00\00 \02\01\00!\00\00\00reflect: string index out of range\00\00\00\00\00\00P\02\01\00\22\00\00\00IndexIntIsNilLenunimplemented: (reflect.Value).MapRange()\00\00\00\00\00\00\00\90\02\01\00)\00\00\00\00\00\00\00\00\00\00\00unimplemented: (reflect.Value).Pointer()\d0\02\01\00(\00\00\00Pointer<T>Uint\00\00\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08operation not supported/dev/stdout\00\00\00\00\00\00\00\00\00\00\00\00\00\00strconv: num > den<<shift in adjustLastDigitFixed\00\00\00\00\00\00\00@\04\01\001\00\00\00strconv: \ce\b5 > (den<<shift)/2\00\00\00\00\80\04\01\00\1c\00\00\00\5ca\5cb\5cf\5cn\5cr\5ct\5cv\5cu\5cU\5cx0123456789abcdef\00\00\00\00\88\02\1c\08\a0\d5\8f\fa<\fb\ff\ff\00\00\00\00v\bf>\a2\7f\e1\ae\baW\fb\ff\ff\00\00\00\00v\acU0 \fb\16\8br\fb\ff\ff\00\00\00\00\ea5\ce]J\89B\cf\8c\fb\ff\ff\00\00\00\00-;eU\aa\b0k\9a\a7\fb\ff\ff\00\00\00\00\dfE\1a=\03\cf\1a\e6\c1\fb\ff\ff\00\00\00\00\ca\c6\9a\c7\17\fep\ab\dc\fb\ff\ff\00\00\00\00O\dc\bc\be\fc\b1w\ff\f6\fb\ff\ff\00\00\00\00\0c\d6kA\ef\91V\be\11\fc\ff\ff\00\00\00\00<\fc\7f\90\ad\1f\d0\8d,\fc\ff\ff\00\00\00\00\83\9aU1(\5cQ\d3F\fc\ff\ff\00\00\00\00\b5\c9\a6\ad\8f\acq\9da\fc\ff\ff\00\00\00\00\cb\8b\ee#w\22\9c\ea{\fc\ff\ff\00\00\00\00mSx@\91I\cc\ae\96\fc\ff\ff\00\00\00\00W\ce\b6]y\12<\82\b1\fc\ff\ff\00\00\00\007V\fbM6\94\10\c2\cb\fc\ff\ff\00\00\00\00O\98H8o\ea\96\90\e6\fc\ff\ff\00\00\00\00\c7:\82%\cb\85t\d7\00\fd\ff\ff\00\00\00\00\f4\97\bf\97\cd\cf\86\a0\1b\fd\ff\ff\00\00\00\00\e5\ac*\17\98\0a4\ef5\fd\ff\ff\00\00\00\00\8e\b25*\fbg8\b2P\fd\ff\ff\00\00\00\00;?\c6\d2\df\d4\c8\84k\fd\ff\ff\00\00\00\00\ba\cd\d3\1a'D\dd\c5\85\fd\ff\ff\00\00\00\00\96\c9%\bb\ce\9fk\93\a0\fd\ff\ff\00\00\00\00\84\a5b}$l\ac\db\ba\fd\ff\ff\00\00\00\00\f6\da_\0dXf\ab\a3\d5\fd\ff\ff\00\00\00\00&\f1\c3\de\93\f8\e2\f3\ef\fd\ff\ff\00\00\00\00\b8\80\ff\aa\a8\ad\b5\b5\0a\fe\ff\ff\00\00\00\00\8bJ|l\05_b\87%\fe\ff\ff\00\00\00\00S0\c14`\ff\bc\c9?\fe\ff\ff\00\00\00\00U&\ba\91\8c\85N\96Z\fe\ff\ff\00\00\00\00\bd~)p$w\f9\dft\fe\ff\ff\00\00\00\00\8f\b8\e5\b8\9f\bd\df\a6\8f\fe\ff\ff\00\00\00\00\94}t\88\cf_\a9\f8\a9\fe\ff\ff\00\00\00\00\cf\9b\a8\8f\93pD\b9\c4\fe\ff\ff\00\00\00\00k\15\0f\bf\f8\f0\08\8a\df\fe\ff\ff\00\00\00\00\b611eU%\b0\cd\f9\fe\ff\ff\00\00\00\00\ac\7f{\d0\c6\e2?\99\14\ff\ff\ff\00\00\00\00\06;+*\c4\10\5c\e4.\ff\ff\ff\00\00\00\00\d3\92si\99$$\aaI\ff\ff\ff\00\00\00\00\0e\ca\00\83\f2\b5\87\fdc\ff\ff\ff\00\00\00\00\eb\1a\11\92d\08\e5\bc~\ff\ff\ff\00\00\00\00\cc\88Po\09\cc\bc\8c\99\ff\ff\ff\00\00\00\00,e\19\e2X\17\b7\d1\b3\ff\ff\ff\00\00\00\00\00\00\00\00\00\00@\9c\ce\ff\ff\ff\00\00\00\00\00\00\00\00\10\a5\d4\e8\e8\ff\ff\ff\00\00\00\00\00\00b\ac\c5\ebx\ad\03\00\00\00\00\00\00\00\84\09\94\f8x9?\81\1e\00\00\00\00\00\00\00\b3\15\07\c9{\ce\97\c08\00\00\00\00\00\00\00p\5c\ea{\ce2~\8fS\00\00\00\00\00\00\00h\80\e9\ab\a48\d2\d5m\00\00\00\00\00\00\00E\22\9a\17&'O\9f\88\00\00\00\00\00\00\00'\fb\c4\d41\a2c\ed\a2\00\00\00\00\00\00\00\a8\ad\c8\8c8e\de\b0\bd\00\00\00\00\00\00\00\dbe\ab\1a\8e\08\c7\83\d8\00\00\00\00\00\00\00\9a\1dqB\f9\1d]\c4\f2\00\00\00\00\00\00\00X\e7\1b\a6,iM\92\0d\01\00\00\00\00\00\00\ea\8dp\1ad\ee\01\da'\01\00\00\00\00\00\00Jw\ef\9a\99\a3m\a2B\01\00\00\00\00\00\00\85k}\b4{x\09\f2\5c\01\00\00\00\00\00\00w\18\ddy\a1\e4T\b4w\01\00\00\00\00\00\00\c2\c5\9b[\92\86[\86\92\01\00\00\00\00\00\00=]\96\c8\c5S5\c8\ac\01\00\00\00\00\00\00\b3\a0\97\fa\5c\b4*\95\c7\01\00\00\00\00\00\00\e3_\a0\99\bd\9fF\de\e1\01\00\00\00\00\00\00%\8c9\db4\c2\9b\a5\fc\01\00\00\00\00\00\00\5c\9f\98\a3r\9a\c6\f6\16\02\00\00\00\00\00\00\ce\be\e9TS\bf\dc\b71\02\00\00\00\00\00\00\e2A\22\f2\17\f3\fc\88L\02\00\00\00\00\00\00\a5x\5c\d3\9b\ce \ccf\02\00\00\00\00\00\00\dfS!{\f3Z\16\98\81\02\00\00\00\00\00\00:0\1f\97\dc\b5\a0\e2\9b\02\00\00\00\00\00\00\96\b3\e3\5cS\d1\d9\a8\b6\02\00\00\00\00\00\00<D\a7\a4\d9|\9b\fb\d0\02\00\00\00\00\00\00\10D\a4\a7LLv\bb\eb\02\00\00\00\00\00\00\1a\9c@\b6\ef\8e\ab\8b\06\03\00\00\00\00\00\00,\84W\a6\10\ef\1f\d0 \03\00\00\00\00\00\00)1\91\e9\e5\a4\10\9b;\03\00\00\00\00\00\00\9d\0c\9c\a1\fb\9b\10\e7U\03\00\00\00\00\00\00)\f4;b\d9 (\acp\03\00\00\00\00\00\00\85\cf\a7z^KD\80\8b\03\00\00\00\00\00\00-\dd\ac\03@\e4!\bf\a5\03\00\00\00\00\00\00\8f\ffD^/\9cg\8e\c0\03\00\00\00\00\00\00A\b8\8c\9c\9d\173\d4\da\03\00\00\00\00\00\00\a9\1b\e3\b4\92\db\19\9e\f5\03\00\00\00\00\00\00\d9w\df\ban\bf\96\eb\0f\04\00\00\00\00\00\00k\ee\f0\9b;\02\87\af*\04\00\00\00\00\00\00strconv: illegal AppendFloat/FormatFloat bitSize@\0a\01\000\00\00\00NaN-Inf+Inf5251256253125156257812539062519531259765625488281252441406251220703125610351562530517578125152587890625762939453125381469726562519073486328125953674316406254768371582031252384185791015625\00\0011920928955078125\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0059604644775390625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00298023223876953125\00\00\00\00\00\00\00\00\00\00\00\00\00\001490116119384765625\00\00\00\00\00\00\00\00\00\00\00\00\007450580596923828125\00\00\00\00\00\00\00\00\00\00\00\00\0037252902984619140625\00\00\00\00\00\00\00\00\00\00\00\00186264514923095703125\00\00\00\00\00\00\00\00\00\00\00931322574615478515625\00\00\00\00\00\00\00\00\00\00\004656612873077392578125\00\00\00\00\00\00\00\00\00\0023283064365386962890625\00\00\00\00\00\00\00\00\00116415321826934814453125\00\00\00\00\00\00\00\00582076609134674072265625\00\00\00\00\00\00\00\002910383045673370361328125\00\00\00\00\00\00\0014551915228366851806640625\00\00\00\00\00\0072759576141834259033203125\00\00\00\00\00\00363797880709171295166015625\00\00\00\00\001818989403545856475830078125\00\00\00\009094947017729282379150390625\00\00\00\0045474735088646411895751953125\00\00\00227373675443232059478759765625\00\001136868377216160297393798828125\005684341886080801486968994140625\0028421709430404007434844970703125142108547152020037174224853515625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00710542735760100185871124267578125\00\00\00\00\00\00\00\00\00\00\00\00\00\00\003552713678800500929355621337890625\00\00\00\00\00\00\00\00\00\00\00\00\00\0017763568394002504646778106689453125\00\00\00\00\00\00\00\00\00\00\00\00\0088817841970012523233890533447265625\00\00\00\00\00\00\00\00\00\00\00\00\00444089209850062616169452667236328125\00\00\00\00\00\00\00\00\00\00\00\002220446049250313080847263336181640625\00\00\00\00\00\00\00\00\00\00\0011102230246251565404236316680908203125\00\00\00\00\00\00\00\00\00\0055511151231257827021181583404541015625\00\00\00\00\00\00\00\00\00\00277555756156289135105907917022705078125\00\00\00\00\00\00\00\00\001387778780781445675529539585113525390625\00\00\00\00\00\00\00\006938893903907228377647697925567626953125\00\00\00\00\00\00\00\0034694469519536141888238489627838134765625\00\00\00\00\00\00\00173472347597680709441192448139190673828125\00\00\00\00\00\00867361737988403547205962240695953369140625\00\00\00\00\00\00\01\00\00\00\00\00\00\00\0a\00\00\00\00\00\00\00d\00\00\00\00\00\00\00\e8\03\00\00\00\00\00\00\10'\00\00\00\00\00\00\a0\86\01\00\00\00\00\00@B\0f\00\00\00\00\00\80\96\98\00\00\00\00\00\00\e1\f5\05\00\00\00\00\00\ca\9a;\00\00\00\00\00\e4\0bT\02\00\00\00\00\e8vH\17\00\00\00\00\10\a5\d4\e8\00\00\00\00\a0rN\18\09\00\00\00@z\10\f3Z\00\00\00\80\c6\a4~\8d\03\00\00\00\c1o\f2\86#\00\00\00\8a]xEc\01\00\00d\a7\b3\b6\e0\0d\00\00\e8\89\04#\c7\8apanic: out of memory\00\00\00\00\00\00\00\00\00\00\00\00index out of range\00\00\00\00\00\00\00\00\00\00\00\00\00\00nil pointer dereference\00\00\00\00\00\00\00\00\00panic: runtime error: \00\00\00\00\00\00\00\00\00\00slice out of rangeHello World\00\00\00\22\12\01\00\0b\00\00\00\00\00\00\00\00\00\00\00reflect: call of reflect.Type.\00\00reflect: call of reflect.Value. on invalid typei)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000123456789abcdefx)(nilErrorString[]byte\00\00\00\00\00\00\00\00\00<invalid reflect.Value>map[(nil), <nil>`\00\00\00\00\00\00\00\00fmt: unknown base; can't happen\00\00\13\01\00\1f\00\00\00\00\00\00\00\00\00\00\00strconv: internal error, rest != 0 but needed > 0\00\00\00\00\00\00\000\13\01\001\00\00\00truefalsewrite : \00\00\00\00\00\00\00\83\0a\01\00\00\00\00\00\01\00\00\00\83\0a\01\00\01\00\00\00\01\00\00\00\84\0a\01\00\02\00\00\00\01\00\00\00\86\0a\01\00\03\00\00\00\02\00\00\00\89\0a\01\00\03\00\00\00\02\00\00\00\8c\0a\01\00\04\00\00\00\02\00\00\00\90\0a\01\00\05\00\00\00\03\00\00\00\95\0a\01\00\05\00\00\00\03\00\00\00\9a\0a\01\00\06\00\00\00\03\00\00\00\a0\0a\01\00\07\00\00\00\04\00\00\00\a7\0a\01\00\07\00\00\00\04\00\00\00\ae\0a\01\00\08\00\00\00\04\00\00\00\b6\0a\01\00\09\00\00\00\04\00\00\00\bf\0a\01\00\0a\00\00\00\05\00\00\00\c9\0a\01\00\0a\00\00\00\05\00\00\00\d3\0a\01\00\0b\00\00\00\05\00\00\00\de\0a\01\00\0c\00\00\00\06\00\00\00\ea\0a\01\00\0c\00\00\00\06\00\00\00\f6\0a\01\00\0d\00\00\00\06\00\00\00\03\0b\01\00\0e\00\00\00\07\00\00\00\11\0b\01\00\0e\00\00\00\07\00\00\00\1f\0b\01\00\0f\00\00\00\07\00\00\00.\0b\01\00\10\00\00\00\07\00\00\00@\0b\01\00\11\00\00\00\08\00\00\00`\0b\01\00\11\00\00\00\08\00\00\00\80\0b\01\00\12\00\00\00\08\00\00\00\a0\0b\01\00\13\00\00\00\09\00\00\00\c0\0b\01\00\13\00\00\00\09\00\00\00\e0\0b\01\00\14\00\00\00\09\00\00\00\00\0c\01\00\15\00\00\00\0a\00\00\00 \0c\01\00\15\00\00\00\0a\00\00\00@\0c\01\00\16\00\00\00\0a\00\00\00`\0c\01\00\17\00\00\00\0a\00\00\00\80\0c\01\00\18\00\00\00\0b\00\00\00\a0\0c\01\00\18\00\00\00\0b\00\00\00\c0\0c\01\00\19\00\00\00\0b\00\00\00\e0\0c\01\00\1a\00\00\00\0c\00\00\00\00\0d\01\00\1a\00\00\00\0c\00\00\00 \0d\01\00\1b\00\00\00\0c\00\00\00@\0d\01\00\1c\00\00\00\0d\00\00\00`\0d\01\00\1c\00\00\00\0d\00\00\00\80\0d\01\00\1d\00\00\00\0d\00\00\00\a0\0d\01\00\1e\00\00\00\0d\00\00\00\c0\0d\01\00\1f\00\00\00\0e\00\00\00\e0\0d\01\00\1f\00\00\00\0e\00\00\00\00\0e\01\00 \00\00\00\0e\00\00\00 \0e\01\00!\00\00\00\0f\00\00\00P\0e\01\00!\00\00\00\0f\00\00\00\80\0e\01\00\22\00\00\00\0f\00\00\00\b0\0e\01\00#\00\00\00\10\00\00\00\e0\0e\01\00#\00\00\00\10\00\00\00\10\0f\01\00$\00\00\00\10\00\00\00@\0f\01\00%\00\00\00\10\00\00\00p\0f\01\00&\00\00\00\11\00\00\00\a0\0f\01\00&\00\00\00\11\00\00\00\d0\0f\01\00'\00\00\00\11\00\00\00\00\10\01\00(\00\00\00\12\00\00\000\10\01\00(\00\00\00\12\00\00\00`\10\01\00)\00\00\00\12\00\00\00\90\10\01\00*\00\00\00\13\00\00\00\c0\10\01\00*\00\00\00\00\00\01\00M\00\01\00P\00\01\00]\00\01\00\80\00\01\00\fa\00\01\00\00\01\01\00\02\01\01\00\07\01\01\003\01\01\007\01\01\00\9c\01\01\00\a0\01\01\00\a0\01\01\00\d0\01\01\00\fd\01\01\00\80\02\01\00\9c\02\01\00\a0\02\01\00\d0\02\01\00\e0\02\01\00\fb\02\01\00\00\03\01\00#\03\01\00-\03\01\00J\03\01\00P\03\01\00z\03\01\00\80\03\01\00\c3\03\01\00\c8\03\01\00\d5\03\01\00\00\04\01\00\9d\04\01\00\a0\04\01\00\a9\04\01\00\b0\04\01\00\d3\04\01\00\d8\04\01\00\fb\04\01\00\00\05\01\00'\05\01\000\05\01\00c\05\01\00o\05\01\00o\05\01\00\00\06\01\006\07\01\00@\07\01\00U\07\01\00`\07\01\00g\07\01\00\00\08\01\00\05\08\01\00\08\08\01\008\08\01\00<\08\01\00<\08\01\00?\08\01\00\9e\08\01\00\a7\08\01\00\af\08\01\00\e0\08\01\00\f5\08\01\00\fb\08\01\00\1b\09\01\00\1f\09\01\009\09\01\00?\09\01\00?\09\01\00\80\09\01\00\b7\09\01\00\bc\09\01\00\cf\09\01\00\d2\09\01\00\06\0a\01\00\0c\0a\01\005\0a\01\008\0a\01\00:\0a\01\00?\0a\01\00H\0a\01\00P\0a\01\00X\0a\01\00`\0a\01\00\9f\0a\01\00\c0\0a\01\00\e6\0a\01\00\eb\0a\01\00\f6\0a\01\00\00\0b\01\005\0b\01\009\0b\01\00U\0b\01\00X\0b\01\00r\0b\01\00x\0b\01\00\91\0b\01\00\99\0b\01\00\9c\0b\01\00\a9\0b\01\00\af\0b\01\00\00\0c\01\00H\0c\01\00\80\0c\01\00\b2\0c\01\00\c0\0c\01\00\f2\0c\01\00\fa\0c\01\00'\0d\01\000\0d\01\009\0d\01\00`\0e\01\00\ad\0e\01\00\b0\0e\01\00\b1\0e\01\00\00\0f\01\00'\0f\01\000\0f\01\00Y\0f\01\00\b0\0f\01\00\cb\0f\01\00\e0\0f\01\00\f6\0f\01\00\00\10\01\00M\10\01\00R\10\01\00o\10\01\00\7f\10\01\00\c1\10\01\00\d0\10\01\00\e8\10\01\00\f0\10\01\00\f9\10\01\00\00\11\01\00G\11\01\00P\11\01\00v\11\01\00\80\11\01\00\f4\11\01\00\00\12\01\00>\12\01\00\80\12\01\00\a9\12\01\00\b0\12\01\00\ea\12\01\00\f0\12\01\00\f9\12\01\00\00\13\01\00\0c\13\01\00\0f\13\01\00\10\13\01\00\13\13\01\00D\13\01\00G\13\01\00H\13\01\00K\13\01\00M\13\01\00P\13\01\00P\13\01\00W\13\01\00W\13\01\00]\13\01\00c\13\01\00f\13\01\00l\13\01\00p\13\01\00t\13\01\00\00\14\01\00a\14\01\00\80\14\01\00\c7\14\01\00\d0\14\01\00\d9\14\01\00\80\15\01\00\b5\15\01\00\b8\15\01\00\dd\15\01\00\00\16\01\00D\16\01\00P\16\01\00Y\16\01\00`\16\01\00l\16\01\00\80\16\01\00\b8\16\01\00\c0\16\01\00\c9\16\01\00\00\17\01\00\1a\17\01\00\1d\17\01\00+\17\01\000\17\01\00?\17\01\00\00\18\01\00;\18\01\00\a0\18\01\00\f2\18\01\00\ff\18\01\00\06\19\01\00\09\19\01\00\09\19\01\00\0c\19\01\008\19\01\00;\19\01\00F\19\01\00P\19\01\00Y\19\01\00\a0\19\01\00\a7\19\01\00\aa\19\01\00\d7\19\01\00\da\19\01\00\e4\19\01\00\00\1a\01\00G\1a\01\00P\1a\01\00\a2\1a\01\00\c0\1a\01\00\f8\1a\01\00\00\1c\01\00E\1c\01\00P\1c\01\00l\1c\01\00p\1c\01\00\8f\1c\01\00\92\1c\01\00\b6\1c\01\00\00\1d\01\006\1d\01\00:\1d\01\00G\1d\01\00P\1d\01\00Y\1d\01\00`\1d\01\00\98\1d\01\00\a0\1d\01\00\a9\1d\01\00\e0\1e\01\00\f8\1e\01\00\b0\1f\01\00\b0\1f\01\00\c0\1f\01\00\f1\1f\01\00\ff\1f\01\00\99#\01\00\00$\01\00t$\01\00\80$\01\00C%\01\00\000\01\00.4\01\00\00D\01\00FF\01\00\00h\01\008j\01\00@j\01\00ij\01\00nj\01\00oj\01\00\d0j\01\00\edj\01\00\f0j\01\00\f5j\01\00\00k\01\00Ek\01\00Pk\01\00wk\01\00}k\01\00\8fk\01\00@n\01\00\9an\01\00\00o\01\00Jo\01\00Oo\01\00\87o\01\00\8fo\01\00\9fo\01\00\e0o\01\00\e4o\01\00\f0o\01\00\f1o\01\00\00p\01\00\f7\87\01\00\00\88\01\00\d5\8c\01\00\00\8d\01\00\08\8d\01\00\00\b0\01\00\1e\b1\01\00P\b1\01\00R\b1\01\00d\b1\01\00g\b1\01\00p\b1\01\00\fb\b2\01\00\00\bc\01\00j\bc\01\00p\bc\01\00|\bc\01\00\80\bc\01\00\88\bc\01\00\90\bc\01\00\99\bc\01\00\9c\bc\01\00\9f\bc\01\00\00\d0\01\00\f5\d0\01\00\00\d1\01\00&\d1\01\00)\d1\01\00r\d1\01\00{\d1\01\00\e8\d1\01\00\00\d2\01\00E\d2\01\00\e0\d2\01\00\f3\d2\01\00\00\d3\01\00V\d3\01\00`\d3\01\00x\d3\01\00\00\d4\01\00\9f\d4\01\00\a2\d4\01\00\a2\d4\01\00\a5\d4\01\00\a6\d4\01\00\a9\d4\01\00\0a\d5\01\00\0d\d5\01\00F\d5\01\00J\d5\01\00\a5\d6\01\00\a8\d6\01\00\cb\d7\01\00\ce\d7\01\00\8b\da\01\00\9b\da\01\00\af\da\01\00\00\e0\01\00\18\e0\01\00\1b\e0\01\00*\e0\01\00\00\e1\01\00,\e1\01\000\e1\01\00=\e1\01\00@\e1\01\00I\e1\01\00N\e1\01\00O\e1\01\00\c0\e2\01\00\f9\e2\01\00\ff\e2\01\00\ff\e2\01\00\00\e8\01\00\c4\e8\01\00\c7\e8\01\00\d6\e8\01\00\00\e9\01\00K\e9\01\00P\e9\01\00Y\e9\01\00^\e9\01\00_\e9\01\00q\ec\01\00\b4\ec\01\00\01\ed\01\00=\ed\01\00\00\ee\01\00$\ee\01\00'\ee\01\00;\ee\01\00B\ee\01\00B\ee\01\00G\ee\01\00T\ee\01\00W\ee\01\00d\ee\01\00g\ee\01\00\9b\ee\01\00\a1\ee\01\00\bb\ee\01\00\f0\ee\01\00\f1\ee\01\00\00\f0\01\00+\f0\01\000\f0\01\00\93\f0\01\00\a0\f0\01\00\ae\f0\01\00\b1\f0\01\00\f5\f0\01\00\00\f1\01\00\ad\f1\01\00\e6\f1\01\00\02\f2\01\00\10\f2\01\00;\f2\01\00@\f2\01\00H\f2\01\00P\f2\01\00Q\f2\01\00`\f2\01\00e\f2\01\00\00\f3\01\00\d7\f6\01\00\e0\f6\01\00\ec\f6\01\00\f0\f6\01\00\fc\f6\01\00\00\f7\01\00s\f7\01\00\80\f7\01\00\d8\f7\01\00\e0\f7\01\00\eb\f7\01\00\00\f8\01\00\0b\f8\01\00\10\f8\01\00G\f8\01\00P\f8\01\00Y\f8\01\00`\f8\01\00\87\f8\01\00\90\f8\01\00\ad\f8\01\00\b0\f8\01\00\b1\f8\01\00\00\f9\01\00S\fa\01\00`\fa\01\00m\fa\01\00p\fa\01\00t\fa\01\00x\fa\01\00z\fa\01\00\80\fa\01\00\86\fa\01\00\90\fa\01\00\a8\fa\01\00\b0\fa\01\00\b6\fa\01\00\c0\fa\01\00\c2\fa\01\00\d0\fa\01\00\d6\fa\01\00\00\fb\01\00\ca\fb\01\00\f0\fb\01\00\f9\fb\01\00\00\00\02\00\dd\a6\02\00\00\a7\02\004\b7\02\00@\b7\02\00\1d\b8\02\00 \b8\02\00\a1\ce\02\00\b0\ce\02\00\e0\eb\02\00\00\f8\02\00\1d\fa\02\00\00\00\03\00J\13\03\00\00\01\0e\00\ef\01\0e\00\00\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00I\00\00\00\10\00\00\00\0e\00\00\005\00\00\00\19\00\00\00q\00\00\00v\00\00\00\03\00\00\00\80\00\00\00\10D\00\00\00\00\00\00\00\00\00\00\01\04\22\00\03\04\22\07\04\22\0a\04s\0f\03\00X!\00$\1b\00\90\01*\09\00\02=\00\02H\00\02T\00\02Z\00\02_\00\02e\00\02k\00\02p\00\02v\05\00\e5-\13\01\9f\024\00\04}\00\04\81\01\00\09\86\01\0a\00\b7\01\13\00C\17\00\df\01\1b\00\ff\010\00\02\8d\01\00\02\97\01\00\02\a2\01\00\02\ac\01\00\02\b5\01\00s\be\01\01\00\22\c9\01\02\00\f3\02\cb\01\00\22\d2\01\02\04\e77\d7\01\04\e77\db\01\00\00\00\00\00\06Method\02Op\04Path\03Err\03buf\03arg\05value\08typecode\05flags\03fmt\08fmtFlags\0awidPresent\0bprecPresent\05minus\04plus\05sharp\05space\04zero\05plusV\06sharpV\03wid\04prec\06intbuf\09reordered\0agoodArgNum\09panicking\08erroring\08wrapErrs\0awrappedErr\01s\06handle\04name\03Key\05Value")
  (data (;1;) (i32.const 73576) "\17\00\00\00\08\00\00\00\81\ff\ff\ff\00\00\00\004\00\00\00\0b\00\00\00\01\fc\ff\ffl%\01\00\f0$\01\00\00\00\00\00\10\04\01\00\17\00\00\00\d0\00\00\00\01\00\00\00'\04\01\00\0b\00\00\00 \00~\00\a1\00w\03z\03\7f\03\84\03V\05Y\05\8a\05\8d\05\c7\05\d0\05\ea\05\ef\05\f4\05\06\06\1b\06\1e\06\0d\07\10\07J\07M\07\b1\07\c0\07\fa\07\fd\07-\080\08[\08^\08j\08\a0\08\c7\08\d3\08\8c\09\8f\09\90\09\93\09\b2\09\b6\09\b9\09\bc\09\c4\09\c7\09\c8\09\cb\09\ce\09\d7\09\d7\09\dc\09\e3\09\e6\09\fe\09\01\0a\0a\0a\0f\0a\10\0a\13\0a9\0a<\0aB\0aG\0aH\0aK\0aM\0aQ\0aQ\0aY\0a^\0af\0av\0a\81\0a\b9\0a\bc\0a\cd\0a\d0\0a\d0\0a\e0\0a\e3\0a\e6\0a\f1\0a\f9\0a\0c\0b\0f\0b\10\0b\13\0b9\0b<\0bD\0bG\0bH\0bK\0bM\0bU\0bW\0b\5c\0bc\0bf\0bw\0b\82\0b\8a\0b\8e\0b\95\0b\99\0b\9f\0b\a3\0b\a4\0b\a8\0b\aa\0b\ae\0b\b9\0b\be\0b\c2\0b\c6\0b\cd\0b\d0\0b\d0\0b\d7\0b\d7\0b\e6\0b\fa\0b\00\0c9\0c=\0cM\0cU\0cZ\0c`\0cc\0cf\0co\0cw\0c\b9\0c\bc\0c\cd\0c\d5\0c\d6\0c\de\0c\e3\0c\e6\0c\f2\0c\00\0dO\0dT\0dc\0df\0d\96\0d\9a\0d\bd\0d\c0\0d\c6\0d\ca\0d\ca\0d\cf\0d\df\0d\e6\0d\ef\0d\f2\0d\f4\0d\01\0e:\0e?\0e[\0e\81\0e\bd\0e\c0\0e\cd\0e\d0\0e\d9\0e\dc\0e\df\0e\00\0fl\0fq\0f\da\0f\00\10\c7\10\cd\10\cd\10\d0\10M\12P\12]\12`\12\8d\12\90\12\b5\12\b8\12\c5\12\c8\12\15\13\18\13Z\13]\13|\13\80\13\99\13\a0\13\f5\13\f8\13\fd\13\00\14\9c\16\a0\16\f8\16\00\17\14\17 \176\17@\17S\17`\17s\17\80\17\dd\17\e0\17\e9\17\f0\17\f9\17\00\18\0d\18\10\18\19\18 \18x\18\80\18\aa\18\b0\18\f5\18\00\19+\190\19;\19@\19@\19D\19m\19p\19t\19\80\19\ab\19\b0\19\c9\19\d0\19\da\19\de\19\1b\1a\1e\1a|\1a\7f\1a\89\1a\90\1a\99\1a\a0\1a\ad\1a\b0\1a\c0\1a\00\1bK\1bP\1b|\1b\80\1b\f3\1b\fc\1b7\1c;\1cI\1cM\1c\88\1c\90\1c\ba\1c\bd\1c\c7\1c\d0\1c\fa\1c\00\1d\15\1f\18\1f\1d\1f \1fE\1fH\1fM\1fP\1f}\1f\80\1f\d3\1f\d6\1f\ef\1f\f2\1f\fe\1f\10 ' 0 ^ p q t \9c \a0 \bf \d0 \f0 \00!\8b!\90!&$@$J$`$s+v+\f3,\f9,'-----0-g-o-p-\7f-\96-\a0-R.\80.\f3.\00/\d5/\f0/\fb/\010\960\990\ff0\051\e31\f01\fc\9f\00\a0\8c\a4\90\a4\c6\a4\d0\a4+\a6@\a6\f7\a6\00\a7\bf\a7\c2\a7\ca\a7\f5\a7,\a80\a89\a8@\a8w\a8\80\a8\c5\a8\ce\a8\d9\a8\e0\a8S\a9_\a9|\a9\80\a9\d9\a9\de\a96\aa@\aaM\aaP\aaY\aa\5c\aa\c2\aa\db\aa\f6\aa\01\ab\06\ab\09\ab\0e\ab\11\ab\16\ab \abk\abp\ab\ed\ab\f0\ab\f9\ab\00\ac\a3\d7\b0\d7\c6\d7\cb\d7\fb\d7\00\f9m\fap\fa\d9\fa\00\fb\06\fb\13\fb\17\fb\1d\fb\c1\fb\d3\fb?\fdP\fd\8f\fd\92\fd\c7\fd\f0\fd\fd\fd\00\fe\19\fe \fek\fep\fe\fc\fe\01\ff\be\ff\c2\ff\c7\ff\ca\ff\cf\ff\d2\ff\d7\ff\da\ff\dc\ff\e0\ff\ee\ff\fc\ff\fd\ff\ad\00\8b\03\8d\03\a2\030\05\90\05\dd\06?\08_\08\b5\08\e2\08\84\09\a9\09\b1\09\de\09\04\0a)\0a1\0a4\0a7\0a=\0a]\0a\84\0a\8e\0a\92\0a\a9\0a\b1\0a\b4\0a\c6\0a\ca\0a\00\0b\04\0b)\0b1\0b4\0b^\0b\84\0b\91\0b\9b\0b\9d\0b\c9\0b\0d\0c\11\0c)\0cE\0cI\0cW\0c\8d\0c\91\0c\a9\0c\b4\0c\c5\0c\c9\0c\df\0c\f0\0c\0d\0d\11\0dE\0dI\0d\80\0d\84\0d\b2\0d\bc\0d\d5\0d\d7\0d\83\0e\85\0e\8b\0e\a4\0e\a6\0e\c5\0e\c7\0eH\0f\98\0f\bd\0f\cd\0f\c6\10I\12W\12Y\12\89\12\b1\12\bf\12\c1\12\d7\12\11\13\80\16\0d\17m\17q\17\1f\19_\1a\fa\1dX\1fZ\1f\5c\1f^\1f\b5\1f\c5\1f\dc\1f\f5\1f\8f \96+/,_,&-\a7-\af-\b7-\bf-\c7-\cf-\d7-\df-\9a.@001\8f1\1f2\ce\a9\ff\a9'\ab/\ab7\fb=\fb?\fbB\fbE\fbS\feg\feu\fe\e7\ff\0c\00'\00;\00>\00\8f\01\9e\03\09\086\08V\08\f3\08\04\0a\14\0a\18\0a\7f\0e\aa\0e\bd\105\11\e0\11\12\12\87\12\89\12\8e\12\9e\12\04\13)\131\134\13:\13\5c\14\14\19\17\196\19\09\1c7\1c\a8\1c\07\1d\0a\1d;\1d>\1df\1di\1d\8f\1d\92\1do$_jZkbkU\d4\9d\d4\ad\d4\ba\d4\bc\d4\c4\d4\06\d5\15\d5\1d\d5:\d5?\d5E\d5Q\d5\a0\da\07\e0\22\e0%\e0\04\ee \ee#\ee(\ee3\ee8\ee:\eeH\eeJ\eeL\eeP\eeS\eeX\eeZ\ee\5c\ee^\ee`\eec\eek\ees\eex\ee}\ee\7f\ee\8a\ee\a4\ee\aa\ee\c0\f0\d0\f0y\f9\cc\f9\93\fb"))
