(module
 (type $IIIv (func (param i64 i64 i64)))
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iI (func (param i32) (result i64)))
 (type $iv (func (param i32)))
 (type $Iv (func (param i64)))
 (type $v (func))
 (import "eoslib" "action_data_size" (func $contracts/eoslib/action_data_size (result i32)))
 (import "eoslib" "read_action_data" (func $contracts/eoslib/read_action_data (param i32 i32) (result i32)))
 (import "eoslib" "prints" (func $contracts/eoslib/prints (param i32)))
 (import "eoslib" "printn" (func $contracts/eoslib/printn (param i64)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 80))
 (memory $0 1)
 (data (i32.const 12) " \00\00\00.\001\002\003\004\005\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (export "apply" (func $contracts/helloworld/helloworld/apply))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ ~lib/allocator/arena.ts:17:2
  (if
   (get_local $0)
   ;;@ ~lib/allocator/arena.ts:17:12
   (block
    ;;@ ~lib/allocator/arena.ts:18:4
    (if
     ;;@ ~lib/allocator/arena.ts:18:8
     (i32.gt_u
      (get_local $0)
      ;;@ ~lib/allocator/arena.ts:18:15
      (i32.const 1073741824)
     )
     ;;@ ~lib/allocator/arena.ts:18:28
     (unreachable)
    )
    ;;@ ~lib/allocator/arena.ts:22:4
    (if
     ;;@ ~lib/allocator/arena.ts:22:8
     (i32.gt_u
      ;;@ ~lib/allocator/arena.ts:20:4
      (tee_local $0
       ;;@ ~lib/allocator/arena.ts:20:17
       (i32.and
        (i32.add
         ;;@ ~lib/allocator/arena.ts:20:18
         (i32.add
          ;;@ ~lib/allocator/arena.ts:19:4
          (tee_local $1
           ;;@ ~lib/allocator/arena.ts:19:14
           (get_global $~lib/allocator/arena/offset)
          )
          (get_local $0)
         )
         ;;@ ~lib/allocator/arena.ts:20:31
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      ;;@ ~lib/allocator/arena.ts:22:17
      (i32.shl
       ;;@ ~lib/allocator/arena.ts:21:4
       (tee_local $2
        ;;@ ~lib/allocator/arena.ts:21:22
        (current_memory)
       )
       ;;@ ~lib/allocator/arena.ts:22:39
       (i32.const 16)
      )
     )
     ;;@ ~lib/allocator/arena.ts:25:6
     (if
      ;;@ ~lib/allocator/arena.ts:25:10
      (i32.lt_s
       (grow_memory
        ;;@ ~lib/allocator/arena.ts:24:24
        (select
         (get_local $2)
         ;;@ ~lib/allocator/arena.ts:23:6
         (tee_local $3
          ;;@ ~lib/allocator/arena.ts:23:24
          (i32.shr_u
           (i32.and
            ;;@ ~lib/allocator/arena.ts:23:25
            (i32.add
             ;;@ ~lib/allocator/arena.ts:23:26
             (i32.sub
              (get_local $0)
              (get_local $1)
             )
             ;;@ ~lib/allocator/arena.ts:23:41
             (i32.const 65535)
            )
            (i32.const -65536)
           )
           ;;@ ~lib/allocator/arena.ts:23:64
           (i32.const 16)
          )
         )
         (i32.gt_s
          (get_local $2)
          (get_local $3)
         )
        )
       )
       ;;@ ~lib/allocator/arena.ts:25:37
       (i32.const 0)
      )
      ;;@ ~lib/allocator/arena.ts:25:40
      (if
       ;;@ ~lib/allocator/arena.ts:26:12
       (i32.lt_s
        (grow_memory
         (get_local $3)
        )
        ;;@ ~lib/allocator/arena.ts:26:39
        (i32.const 0)
       )
       ;;@ ~lib/allocator/arena.ts:26:42
       (unreachable)
      )
     )
    )
    ;;@ ~lib/allocator/arena.ts:31:4
    (set_global $~lib/allocator/arena/offset
     (get_local $0)
    )
    ;;@ ~lib/allocator/arena.ts:32:11
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/memory/set_memory (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  ;;@ ~lib/memory.ts:196:2
  (if
   ;;@ ~lib/memory.ts:196:6
   (i32.eqz
    (get_local $2)
   )
   ;;@ ~lib/memory.ts:196:10
   (return)
  )
  ;;@ ~lib/memory.ts:197:2
  (i32.store8
   (get_local $0)
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:198:2
  (i32.store8
   ;;@ ~lib/memory.ts:198:12
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:198:23
    (i32.const 1)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:199:2
  (if
   ;;@ ~lib/memory.ts:199:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:199:11
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:199:14
   (return)
  )
  ;;@ ~lib/memory.ts:201:2
  (i32.store8
   ;;@ ~lib/memory.ts:201:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:201:19
    (i32.const 1)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:202:2
  (i32.store8
   ;;@ ~lib/memory.ts:202:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:202:19
    (i32.const 2)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:203:2
  (i32.store8
   ;;@ ~lib/memory.ts:203:12
   (i32.sub
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    ;;@ ~lib/memory.ts:203:23
    (i32.const 2)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:204:2
  (i32.store8
   ;;@ ~lib/memory.ts:204:12
   (i32.sub
    (get_local $3)
    ;;@ ~lib/memory.ts:204:23
    (i32.const 3)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:205:2
  (if
   ;;@ ~lib/memory.ts:205:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:205:11
    (i32.const 6)
   )
   ;;@ ~lib/memory.ts:205:14
   (return)
  )
  ;;@ ~lib/memory.ts:206:2
  (i32.store8
   ;;@ ~lib/memory.ts:206:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:206:19
    (i32.const 3)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:207:2
  (i32.store8
   ;;@ ~lib/memory.ts:207:12
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:207:23
    (i32.const 4)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:208:2
  (if
   ;;@ ~lib/memory.ts:208:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:208:11
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:208:14
   (return)
  )
  ;;@ ~lib/memory.ts:213:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:211:2
    (tee_local $3
     ;;@ ~lib/memory.ts:211:17
     (i32.and
      (i32.sub
       (i32.const 0)
       (get_local $0)
      )
      ;;@ ~lib/memory.ts:211:25
      (i32.const 3)
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:219:2
  (i32.store
   ;;@ ~lib/memory.ts:212:2
   (tee_local $0
    (i32.add
     (get_local $0)
     (get_local $3)
    )
   )
   ;;@ ~lib/memory.ts:216:2
   (tee_local $1
    ;;@ ~lib/memory.ts:216:17
    (i32.mul
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
     (i32.const 16843009)
    )
   )
  )
  ;;@ ~lib/memory.ts:220:2
  (i32.store
   ;;@ ~lib/memory.ts:220:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:214:2
     (tee_local $2
      (i32.and
       (get_local $2)
       ;;@ ~lib/memory.ts:214:7
       (i32.const -4)
      )
     )
    )
    ;;@ ~lib/memory.ts:220:24
    (i32.const 4)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:221:2
  (if
   ;;@ ~lib/memory.ts:221:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:221:11
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:221:14
   (return)
  )
  ;;@ ~lib/memory.ts:222:2
  (i32.store
   ;;@ ~lib/memory.ts:222:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:222:20
    (i32.const 4)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:223:2
  (i32.store
   ;;@ ~lib/memory.ts:223:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:223:20
    (i32.const 8)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:224:2
  (i32.store
   ;;@ ~lib/memory.ts:224:13
   (i32.sub
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    ;;@ ~lib/memory.ts:224:24
    (i32.const 12)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:225:2
  (i32.store
   ;;@ ~lib/memory.ts:225:13
   (i32.sub
    (get_local $3)
    ;;@ ~lib/memory.ts:225:24
    (i32.const 8)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:226:2
  (if
   ;;@ ~lib/memory.ts:226:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:226:11
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:226:15
   (return)
  )
  ;;@ ~lib/memory.ts:227:2
  (i32.store
   ;;@ ~lib/memory.ts:227:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:227:20
    (i32.const 12)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:228:2
  (i32.store
   ;;@ ~lib/memory.ts:228:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:228:20
    (i32.const 16)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:229:2
  (i32.store
   ;;@ ~lib/memory.ts:229:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:229:20
    (i32.const 20)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:230:2
  (i32.store
   ;;@ ~lib/memory.ts:230:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:230:20
    (i32.const 24)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:231:2
  (i32.store
   ;;@ ~lib/memory.ts:231:13
   (i32.sub
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    ;;@ ~lib/memory.ts:231:24
    (i32.const 28)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:232:2
  (i32.store
   ;;@ ~lib/memory.ts:232:13
   (i32.sub
    (get_local $3)
    ;;@ ~lib/memory.ts:232:24
    (i32.const 24)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:233:2
  (i32.store
   ;;@ ~lib/memory.ts:233:13
   (i32.sub
    (get_local $3)
    ;;@ ~lib/memory.ts:233:24
    (i32.const 20)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:234:2
  (i32.store
   ;;@ ~lib/memory.ts:234:13
   (i32.sub
    (get_local $3)
    ;;@ ~lib/memory.ts:234:24
    (i32.const 16)
   )
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:238:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:237:2
    (tee_local $3
     ;;@ ~lib/memory.ts:237:6
     (i32.add
      ;;@ ~lib/memory.ts:237:11
      (i32.and
       (get_local $0)
       ;;@ ~lib/memory.ts:237:19
       (i32.const 4)
      )
      ;;@ ~lib/memory.ts:237:6
      (i32.const 24)
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:239:2
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:242:2
  (set_local $4
   ;;@ ~lib/memory.ts:242:17
   (i64.or
    (tee_local $4
     (i64.extend_u/i32
      (get_local $1)
     )
    )
    ;;@ ~lib/memory.ts:242:28
    (i64.shl
     (get_local $4)
     ;;@ ~lib/memory.ts:242:41
     (i64.const 32)
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ ~lib/memory.ts:243:9
    (i32.ge_u
     (get_local $2)
     ;;@ ~lib/memory.ts:243:14
     (i32.const 32)
    )
    (block
     ;;@ ~lib/memory.ts:244:4
     (i64.store
      (get_local $0)
      (get_local $4)
     )
     ;;@ ~lib/memory.ts:245:4
     (i64.store
      ;;@ ~lib/memory.ts:245:15
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:245:22
       (i32.const 8)
      )
      (get_local $4)
     )
     ;;@ ~lib/memory.ts:246:4
     (i64.store
      ;;@ ~lib/memory.ts:246:15
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:246:22
       (i32.const 16)
      )
      (get_local $4)
     )
     ;;@ ~lib/memory.ts:247:4
     (i64.store
      ;;@ ~lib/memory.ts:247:15
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:247:22
       (i32.const 24)
      )
      (get_local $4)
     )
     ;;@ ~lib/memory.ts:248:4
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/memory.ts:248:9
       (i32.const 32)
      )
     )
     ;;@ ~lib/memory.ts:249:4
     (set_local $0
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:249:12
       (i32.const 32)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<u8,u32>#constructor (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/internal/typedarray.ts:18:4
  (if
   ;;@ ~lib/internal/typedarray.ts:18:8
   (i32.gt_u
    (get_local $1)
    ;;@ ~lib/internal/typedarray.ts:18:22
    (i32.const 1073741816)
   )
   ;;@ ~lib/internal/typedarray.ts:18:34
   (unreachable)
  )
  (i32.store
   (tee_local $2
    (call $~lib/allocator/arena/allocate_memory
     (i32.shl
      (i32.const 1)
      (i32.sub
       (i32.const 32)
       (i32.clz
        (i32.add
         (get_local $1)
         (i32.const 7)
        )
       )
      )
     )
    )
   )
   (get_local $1)
  )
  ;;@ ~lib/internal/typedarray.ts:21:4
  (call $~lib/memory/set_memory
   ;;@ ~lib/internal/typedarray.ts:21:15
   (i32.add
    (get_local $2)
    ;;@ ~lib/internal/typedarray.ts:21:43
    (i32.const 8)
   )
   ;;@ ~lib/internal/typedarray.ts:21:59
   (i32.const 0)
   (get_local $1)
  )
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 12)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.const 0)
    )
    (i32.store offset=8
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  ;;@ ~lib/internal/typedarray.ts:22:4
  (i32.store
   (get_local $0)
   (get_local $2)
  )
  ;;@ ~lib/internal/typedarray.ts:23:4
  (i32.store offset=4
   (get_local $0)
   ;;@ ~lib/internal/typedarray.ts:23:22
   (i32.const 0)
  )
  ;;@ ~lib/internal/typedarray.ts:24:4
  (i32.store offset=8
   (get_local $0)
   (get_local $1)
  )
  (get_local $0)
 )
 (func $contracts/datastream/DataStream#constructor (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 12)
      )
     )
     ;;@ contracts/datastream.ts:11:13
     (i32.const 0)
    )
    (i32.store offset=4
     (get_local $0)
     (get_local $1)
    )
    (i32.store offset=8
     (get_local $0)
     (get_local $2)
    )
   )
  )
  (get_local $0)
 )
 (func $contracts/utils/N (; 8 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  ;;@ contracts/utils.ts:27:2
  (set_local $5
   ;;@ contracts/utils.ts:27:19
   (i32.load
    (get_local $0)
   )
  )
  ;;@ contracts/utils.ts:28:2
  (block $break|0
   (loop $repeat|0
    ;;@ contracts/utils.ts:28:8
    (if
     (tee_local $1
      (i32.lt_s
       (get_local $3)
       (get_local $5)
      )
     )
     (set_local $1
      ;;@ contracts/utils.ts:28:19
      (i32.lt_s
       (get_local $3)
       ;;@ contracts/utils.ts:28:23
       (i32.const 12)
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $1)
     )
    )
    ;;@ contracts/utils.ts:28:33
    (set_local $4
     (i64.or
      (get_local $4)
      ;;@ contracts/utils.ts:29:12
      (i64.shl
       (i64.and
        ;;@ contracts/utils.ts:29:13
        (block $contracts/utils/char_to_symbol|inlined.0 (result i64)
         (if
          (tee_local $2
           (i32.ge_s
            (tee_local $1
             (block $__inlined_func$~lib/string/String#charCodeAt (result i32)
              (drop
               (br_if $__inlined_func$~lib/string/String#charCodeAt
                (i32.const -1)
                (i32.ge_u
                 (get_local $3)
                 (i32.load
                  (get_local $0)
                 )
                )
               )
              )
              (i32.load16_u offset=4
               (i32.add
                (get_local $0)
                (i32.shl
                 (get_local $3)
                 (i32.const 1)
                )
               )
              )
             )
            )
            (i32.const 97)
           )
          )
          (set_local $2
           (i32.le_s
            (get_local $1)
            (i32.const 122)
           )
          )
         )
         (drop
          (br_if $contracts/utils/char_to_symbol|inlined.0
           (i64.extend_u/i32
            (i32.add
             (get_local $1)
             (i32.const -91)
            )
           )
           (get_local $2)
          )
         )
         (if
          (tee_local $2
           (i32.ge_s
            (get_local $1)
            (i32.const 49)
           )
          )
          (set_local $2
           (i32.le_s
            (get_local $1)
            (i32.const 53)
           )
          )
         )
         (drop
          (br_if $contracts/utils/char_to_symbol|inlined.0
           (i64.extend_u/i32
            (i32.add
             (get_local $1)
             (i32.const -48)
            )
           )
           (get_local $2)
          )
         )
         (i64.const 0)
        )
        ;;@ contracts/utils.ts:29:49
        (i64.const 31)
       )
       ;;@ contracts/utils.ts:29:63
       (i64.sub
        ;;@ contracts/utils.ts:29:64
        (i64.const 64)
        ;;@ contracts/utils.ts:29:69
        (i64.mul
         (i64.extend_u/i32
          (tee_local $3
           ;;@ contracts/utils.ts:29:73
           (i32.add
            (get_local $3)
            ;;@ contracts/utils.ts:29:78
            (i32.const 1)
           )
          )
         )
         ;;@ contracts/utils.ts:29:69
         (i64.const 5)
        )
       )
      )
     )
    )
    (br $repeat|0)
   )
  )
  (i64.or
   (get_local $4)
   ;;@ contracts/utils.ts:31:10
   (i64.and
    (block $contracts/utils/char_to_symbol|inlined.1 (result i64)
     ;;@ contracts/utils.ts:19:5
     (if
      (tee_local $2
       (i32.ge_s
        (tee_local $1
         (block $__inlined_func$~lib/string/String#charCodeAt0 (result i32)
          (drop
           (br_if $__inlined_func$~lib/string/String#charCodeAt0
            (i32.const -1)
            (i32.ge_u
             (i32.const 12)
             (i32.load
              (get_local $0)
             )
            )
           )
          )
          (i32.load16_u offset=4
           (i32.add
            (get_local $0)
            (i32.const 24)
           )
          )
         )
        )
        ;;@ contracts/utils.ts:19:10
        (i32.const 97)
       )
      )
      (set_local $2
       ;;@ contracts/utils.ts:19:16
       (i32.le_s
        (get_local $1)
        ;;@ contracts/utils.ts:19:21
        (i32.const 122)
       )
      )
     )
     (drop
      ;;@ contracts/utils.ts:19:44
      (br_if $contracts/utils/char_to_symbol|inlined.1
       ;;@ contracts/utils.ts:19:33
       (i64.extend_u/i32
        (i32.add
         (get_local $1)
         (i32.const -91)
        )
       )
       (get_local $2)
      )
     )
     ;;@ contracts/utils.ts:20:5
     (if
      (tee_local $2
       (i32.ge_s
        (get_local $1)
        ;;@ contracts/utils.ts:20:10
        (i32.const 49)
       )
      )
      (set_local $2
       ;;@ contracts/utils.ts:20:16
       (i32.le_s
        (get_local $1)
        ;;@ contracts/utils.ts:20:22
        (i32.const 53)
       )
      )
     )
     (drop
      ;;@ contracts/utils.ts:20:44
      (br_if $contracts/utils/char_to_symbol|inlined.1
       ;;@ contracts/utils.ts:20:33
       (i64.extend_u/i32
        (i32.add
         (get_local $1)
         (i32.const -48)
        )
       )
       (get_local $2)
      )
     )
     ;;@ contracts/utils.ts:21:9
     (i64.const 0)
    )
    ;;@ contracts/utils.ts:31:47
    (i64.const 15)
   )
  )
 )
 (func $contracts/datastream/DataStream#readVarint32 (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $continue|0
   (set_local $3
    (i32.add
     (tee_local $4
      (get_local $3)
     )
     (i32.const 1)
    )
   )
   (set_local $1
    (i32.load8_u
     (i32.add
      (i32.load offset=4
       (get_local $0)
      )
      (i32.load
       (get_local $0)
      )
     )
    )
   )
   (i32.store
    (get_local $0)
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   ;;@ contracts/datastream.ts:23:6
   (set_local $2
    (i32.or
     (get_local $2)
     ;;@ contracts/datastream.ts:23:15
     (i32.shl
      (i32.and
       (get_local $1)
       ;;@ contracts/datastream.ts:23:25
       (i32.const 127)
      )
      ;;@ contracts/datastream.ts:23:34
      (i32.mul
       (get_local $4)
       ;;@ contracts/datastream.ts:23:35
       (i32.const 7)
      )
     )
    )
   )
   (br_if $continue|0
    ;;@ contracts/datastream.ts:24:13
    (i32.and
     (get_local $1)
     ;;@ contracts/datastream.ts:24:17
     (i32.const 128)
    )
   )
  )
  (get_local $2)
 )
 (func $contracts/datastream/DataStream#readString (; 10 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ contracts/datastream.ts:62:4
  (if
   (i32.eqz
    ;;@ contracts/datastream.ts:61:4
    (tee_local $1
     ;;@ contracts/datastream.ts:61:19
     (call $contracts/datastream/DataStream#readVarint32
      (get_local $0)
     )
    )
   )
   ;;@ contracts/datastream.ts:62:24
   (return
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $3
    (call $~lib/allocator/arena/allocate_memory
     (i32.add
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
      (i32.const 4)
     )
    )
   )
   (get_local $1)
  )
  (loop $continue|0
   (if
    ;;@ contracts/datastream.ts:66:10
    (i32.lt_u
     (get_local $2)
     (get_local $1)
    )
    (block
     (set_local $4
      (i32.load8_u
       (i32.add
        (i32.load offset=4
         (get_local $0)
        )
        (i32.load
         (get_local $0)
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.add
       (i32.load
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     ;;@ contracts/datastream.ts:68:6
     (i32.store16 offset=4
      ;;@ contracts/datastream.ts:68:17
      (i32.add
       (get_local $3)
       ;;@ contracts/datastream.ts:68:28
       (i32.shl
        (get_local $2)
        ;;@ contracts/datastream.ts:68:34
        (i32.const 1)
       )
      )
      (get_local $4)
     )
     ;;@ contracts/datastream.ts:69:6
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $3)
 )
 (func $contracts/helloworld/helloworld/Message#constructor (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 8)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  (i64.store
   (tee_local $2
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 8)
    )
   )
   (i64.const 0)
  )
  (i64.store
   (get_local $2)
   (call $contracts/utils/N
    (i32.const 8)
   )
  )
  ;;@ contracts/helloworld/helloworld.ts:11:8
  (i32.store
   (get_local $0)
   (get_local $2)
  )
  (set_local $2
   ;;@ contracts/helloworld/helloworld.ts:12:8
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i64.load
    (i32.add
     (i32.load offset=4
      (get_local $1)
     )
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (i32.store
   (get_local $1)
   (i32.add
    (i32.load
     (get_local $1)
    )
    (i32.const 8)
   )
  )
  (i64.store
   (get_local $2)
   (get_local $3)
  )
  ;;@ contracts/helloworld/helloworld.ts:13:8
  (i32.store offset=4
   (get_local $0)
   ;;@ contracts/helloworld/helloworld.ts:13:23
   (call $contracts/datastream/DataStream#readString
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/string/String#get:lengthUTF8 (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/string.ts:417:4
  (set_local $1
   ;;@ ~lib/string.ts:417:14
   (i32.const 1)
  )
  ;;@ ~lib/string.ts:419:4
  (set_local $4
   ;;@ ~lib/string.ts:419:14
   (i32.load
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    ;;@ ~lib/string.ts:420:11
    (i32.lt_u
     (get_local $2)
     (get_local $4)
    )
    (block
     (set_local $2
      ;;@ ~lib/string.ts:422:6
      (if (result i32)
       ;;@ ~lib/string.ts:422:10
       (i32.lt_u
        ;;@ ~lib/string.ts:421:6
        (tee_local $3
         ;;@ ~lib/string.ts:421:14
         (i32.load16_u offset=4
          ;;@ ~lib/string.ts:421:29
          (i32.add
           (get_local $0)
           ;;@ ~lib/string.ts:421:55
           (i32.shl
            (get_local $2)
            ;;@ ~lib/string.ts:421:63
            (i32.const 1)
           )
          )
         )
        )
        ;;@ ~lib/string.ts:422:14
        (i32.const 128)
       )
       ;;@ ~lib/string.ts:422:19
       (block (result i32)
        ;;@ ~lib/string.ts:423:8
        (set_local $1
         (i32.add
          (get_local $1)
          ;;@ ~lib/string.ts:423:15
          (i32.const 1)
         )
        )
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       ;;@ ~lib/string.ts:424:13
       (if (result i32)
        ;;@ ~lib/string.ts:424:17
        (i32.lt_u
         (get_local $3)
         ;;@ ~lib/string.ts:424:21
         (i32.const 2048)
        )
        ;;@ ~lib/string.ts:424:27
        (block (result i32)
         ;;@ ~lib/string.ts:425:8
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/string.ts:425:15
           (i32.const 2)
          )
         )
         (i32.add
          (get_local $2)
          (i32.const 1)
         )
        )
        (block (result i32)
         ;;@ ~lib/string.ts:428:10
         (if
          (tee_local $3
           (i32.eq
            (i32.and
             (get_local $3)
             ;;@ ~lib/string.ts:428:15
             (i32.const 64512)
            )
            ;;@ ~lib/string.ts:428:26
            (i32.const 55296)
           )
          )
          (set_local $3
           ;;@ ~lib/string.ts:428:36
           (i32.lt_u
            (i32.add
             (get_local $2)
             ;;@ ~lib/string.ts:428:42
             (i32.const 1)
            )
            (get_local $4)
           )
          )
         )
         ;;@ ~lib/string.ts:428:10
         (if
          (get_local $3)
          (set_local $3
           ;;@ ~lib/string.ts:429:10
           (i32.eq
            (i32.and
             ;;@ ~lib/string.ts:429:11
             (i32.load16_u offset=4
              ;;@ ~lib/string.ts:429:26
              (i32.add
               (get_local $0)
               ;;@ ~lib/string.ts:429:52
               (i32.shl
                ;;@ ~lib/string.ts:429:53
                (i32.add
                 (get_local $2)
                 ;;@ ~lib/string.ts:429:60
                 (i32.const 1)
                )
                ;;@ ~lib/string.ts:429:66
                (i32.const 1)
               )
              )
             )
             ;;@ ~lib/string.ts:429:85
             (i32.const 64512)
            )
            ;;@ ~lib/string.ts:429:96
            (i32.const 56320)
           )
          )
         )
         ;;@ ~lib/string.ts:426:13
         (if (result i32)
          (get_local $3)
          ;;@ ~lib/string.ts:430:10
          (block (result i32)
           ;;@ ~lib/string.ts:431:10
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/string.ts:431:17
             (i32.const 4)
            )
           )
           (i32.add
            (get_local $2)
            ;;@ ~lib/string.ts:431:27
            (i32.const 2)
           )
          )
          ;;@ ~lib/string.ts:432:15
          (block (result i32)
           ;;@ ~lib/string.ts:433:10
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/string.ts:433:17
             (i32.const 3)
            )
           )
           (i32.add
            (get_local $2)
            (i32.const 1)
           )
          )
         )
        )
       )
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $1)
 )
 (func $~lib/string/String#toUTF8 (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  ;;@ ~lib/string.ts:441:4
  (set_local $5
   ;;@ ~lib/string.ts:441:14
   (call $~lib/allocator/arena/allocate_memory
    ;;@ ~lib/string.ts:441:30
    (call $~lib/string/String#get:lengthUTF8
     (get_local $0)
    )
   )
  )
  ;;@ ~lib/string.ts:443:4
  (set_local $7
   ;;@ ~lib/string.ts:443:14
   (i32.load
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    ;;@ ~lib/string.ts:445:11
    (i32.lt_u
     (get_local $3)
     (get_local $7)
    )
    (block
     ;;@ ~lib/string.ts:447:6
     (if
      ;;@ ~lib/string.ts:447:10
      (i32.lt_u
       ;;@ ~lib/string.ts:446:6
       (tee_local $1
        ;;@ ~lib/string.ts:446:15
        (i32.load16_u offset=4
         ;;@ ~lib/string.ts:446:30
         (i32.add
          (get_local $0)
          ;;@ ~lib/string.ts:446:56
          (i32.shl
           (get_local $3)
           ;;@ ~lib/string.ts:446:64
           (i32.const 1)
          )
         )
        )
       )
       ;;@ ~lib/string.ts:447:15
       (i32.const 128)
      )
      ;;@ ~lib/string.ts:447:20
      (block
       ;;@ ~lib/string.ts:448:8
       (i32.store8
        ;;@ ~lib/string.ts:448:18
        (i32.add
         (get_local $5)
         (get_local $2)
        )
        (get_local $1)
       )
       ;;@ ~lib/string.ts:449:8
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      ;;@ ~lib/string.ts:450:13
      (if
       ;;@ ~lib/string.ts:450:17
       (i32.lt_u
        (get_local $1)
        ;;@ ~lib/string.ts:450:22
        (i32.const 2048)
       )
       ;;@ ~lib/string.ts:450:28
       (block
        ;;@ ~lib/string.ts:452:8
        (i32.store8
         ;;@ ~lib/string.ts:451:8
         (tee_local $4
          ;;@ ~lib/string.ts:451:18
          (i32.add
           (get_local $5)
           (get_local $2)
          )
         )
         ;;@ ~lib/string.ts:452:23
         (i32.or
          (i32.shr_u
           (get_local $1)
           ;;@ ~lib/string.ts:452:29
           (i32.const 6)
          )
          ;;@ ~lib/string.ts:452:38
          (i32.const 192)
         )
        )
        ;;@ ~lib/string.ts:453:8
        (i32.store8 offset=1
         (get_local $4)
         ;;@ ~lib/string.ts:453:23
         (i32.or
          (i32.and
           (get_local $1)
           ;;@ ~lib/string.ts:453:33
           (i32.const 63)
          )
          ;;@ ~lib/string.ts:453:38
          (i32.const 128)
         )
        )
        ;;@ ~lib/string.ts:454:8
        (set_local $2
         (i32.add
          (get_local $2)
          ;;@ ~lib/string.ts:454:15
          (i32.const 2)
         )
        )
       )
       ;;@ ~lib/string.ts:455:13
       (block
        ;;@ ~lib/string.ts:456:8
        (set_local $4
         ;;@ ~lib/string.ts:456:18
         (i32.add
          (get_local $5)
          (get_local $2)
         )
        )
        ;;@ ~lib/string.ts:457:12
        (if
         (tee_local $6
          (i32.eq
           (i32.and
            (get_local $1)
            ;;@ ~lib/string.ts:457:18
            (i32.const 64512)
           )
           ;;@ ~lib/string.ts:457:29
           (i32.const 55296)
          )
         )
         (set_local $6
          ;;@ ~lib/string.ts:457:39
          (i32.lt_u
           (i32.add
            (get_local $3)
            ;;@ ~lib/string.ts:457:45
            (i32.const 1)
           )
           (get_local $7)
          )
         )
        )
        ;;@ ~lib/string.ts:457:8
        (if
         (get_local $6)
         ;;@ ~lib/string.ts:459:10
         (if
          ;;@ ~lib/string.ts:459:14
          (i32.eq
           (i32.and
            ;;@ ~lib/string.ts:458:10
            (tee_local $6
             ;;@ ~lib/string.ts:458:19
             (i32.load16_u offset=4
              ;;@ ~lib/string.ts:458:34
              (i32.add
               (get_local $0)
               ;;@ ~lib/string.ts:458:60
               (i32.shl
                ;;@ ~lib/string.ts:458:61
                (i32.add
                 (get_local $3)
                 ;;@ ~lib/string.ts:458:68
                 (i32.const 1)
                )
                ;;@ ~lib/string.ts:458:74
                (i32.const 1)
               )
              )
             )
            )
            ;;@ ~lib/string.ts:459:20
            (i32.const 64512)
           )
           ;;@ ~lib/string.ts:459:31
           (i32.const 56320)
          )
          ;;@ ~lib/string.ts:459:39
          (block
           ;;@ ~lib/string.ts:461:12
           (i32.store8
            (get_local $4)
            ;;@ ~lib/string.ts:461:27
            (i32.or
             (i32.shr_u
              ;;@ ~lib/string.ts:460:12
              (tee_local $1
               ;;@ ~lib/string.ts:460:17
               (i32.add
                (i32.add
                 ;;@ ~lib/string.ts:460:27
                 (i32.shl
                  ;;@ ~lib/string.ts:460:28
                  (i32.and
                   (get_local $1)
                   ;;@ ~lib/string.ts:460:34
                   (i32.const 1023)
                  )
                  ;;@ ~lib/string.ts:460:45
                  (i32.const 10)
                 )
                 ;;@ ~lib/string.ts:460:17
                 (i32.const 65536)
                )
                ;;@ ~lib/string.ts:460:51
                (i32.and
                 (get_local $6)
                 ;;@ ~lib/string.ts:460:57
                 (i32.const 1023)
                )
               )
              )
              ;;@ ~lib/string.ts:461:33
              (i32.const 18)
             )
             ;;@ ~lib/string.ts:461:43
             (i32.const 240)
            )
           )
           ;;@ ~lib/string.ts:462:12
           (i32.store8 offset=1
            (get_local $4)
            ;;@ ~lib/string.ts:462:27
            (i32.or
             (i32.and
              (i32.shr_u
               (get_local $1)
               ;;@ ~lib/string.ts:462:33
               (i32.const 12)
              )
              ;;@ ~lib/string.ts:462:38
              (i32.const 63)
             )
             ;;@ ~lib/string.ts:462:43
             (i32.const 128)
            )
           )
           ;;@ ~lib/string.ts:463:12
           (i32.store8 offset=2
            (get_local $4)
            ;;@ ~lib/string.ts:463:27
            (i32.or
             (i32.and
              (i32.shr_u
               (get_local $1)
               ;;@ ~lib/string.ts:463:33
               (i32.const 6)
              )
              ;;@ ~lib/string.ts:463:38
              (i32.const 63)
             )
             ;;@ ~lib/string.ts:463:43
             (i32.const 128)
            )
           )
           ;;@ ~lib/string.ts:464:12
           (i32.store8 offset=3
            (get_local $4)
            ;;@ ~lib/string.ts:464:27
            (i32.or
             (i32.and
              (get_local $1)
              ;;@ ~lib/string.ts:464:38
              (i32.const 63)
             )
             ;;@ ~lib/string.ts:464:43
             (i32.const 128)
            )
           )
           ;;@ ~lib/string.ts:465:12
           (set_local $2
            (i32.add
             (get_local $2)
             ;;@ ~lib/string.ts:465:19
             (i32.const 4)
            )
           )
           ;;@ ~lib/string.ts:465:22
           (set_local $3
            (i32.add
             (get_local $3)
             ;;@ ~lib/string.ts:465:29
             (i32.const 2)
            )
           )
           ;;@ ~lib/string.ts:466:12
           (br $continue|0)
          )
         )
        )
        ;;@ ~lib/string.ts:469:8
        (i32.store8
         (get_local $4)
         ;;@ ~lib/string.ts:469:23
         (i32.or
          (i32.shr_u
           (get_local $1)
           ;;@ ~lib/string.ts:469:29
           (i32.const 12)
          )
          ;;@ ~lib/string.ts:469:39
          (i32.const 224)
         )
        )
        ;;@ ~lib/string.ts:470:8
        (i32.store8 offset=1
         (get_local $4)
         ;;@ ~lib/string.ts:470:23
         (i32.or
          (i32.and
           (i32.shr_u
            (get_local $1)
            ;;@ ~lib/string.ts:470:29
            (i32.const 6)
           )
           ;;@ ~lib/string.ts:470:34
           (i32.const 63)
          )
          ;;@ ~lib/string.ts:470:39
          (i32.const 128)
         )
        )
        ;;@ ~lib/string.ts:471:8
        (i32.store8 offset=2
         (get_local $4)
         ;;@ ~lib/string.ts:471:23
         (i32.or
          (i32.and
           (get_local $1)
           ;;@ ~lib/string.ts:471:34
           (i32.const 63)
          )
          ;;@ ~lib/string.ts:471:39
          (i32.const 128)
         )
        )
        ;;@ ~lib/string.ts:472:8
        (set_local $2
         (i32.add
          (get_local $2)
          ;;@ ~lib/string.ts:472:15
          (i32.const 3)
         )
        )
       )
      )
     )
     (set_local $3
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ ~lib/string.ts:475:4
  (i32.store8
   ;;@ ~lib/string.ts:475:14
   (i32.add
    (get_local $5)
    (get_local $2)
   )
   ;;@ ~lib/string.ts:475:25
   (i32.const 0)
  )
  (get_local $5)
 )
 (func $contracts/helloworld/helloworld/apply (; 14 ;) (type $IIIv) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (drop
   (call $contracts/eoslib/read_action_data
    (i32.load
     (tee_local $4
      (call $~lib/internal/typedarray/TypedArray<u8,u32>#constructor
       (i32.const 0)
       (tee_local $3
        (call $contracts/eoslib/action_data_size)
       )
      )
     )
    )
    (get_local $3)
   )
  )
  (call $contracts/eoslib/prints
   (call $~lib/string/String#toUTF8
    (i32.load offset=4
     (tee_local $3
      ;;@ contracts/helloworld/helloworld.ts:28:18
      (call $contracts/helloworld/helloworld/Message#constructor
       (i32.const 0)
       (call $contracts/datastream/DataStream#constructor
        (i32.const 0)
        (i32.load
         (get_local $4)
        )
        (get_local $3)
       )
      )
     )
    )
   )
  )
  (call $contracts/eoslib/printn
   (i64.load
    (i32.load
     (get_local $3)
    )
   )
  )
 )
 (func $start (; 15 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   ;;@ ~lib/allocator/arena.ts:12:25
   (i32.and
    (i32.add
     ;;@ ~lib/allocator/arena.ts:12:26
     (get_global $HEAP_BASE)
     ;;@ ~lib/allocator/arena.ts:12:38
     (i32.const 7)
    )
    (i32.const -8)
   )
  )
  (set_global $~lib/allocator/arena/offset
   ;;@ ~lib/allocator/arena.ts:13:20
   (get_global $~lib/allocator/arena/startOffset)
  )
 )
)
