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
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $node_modules/assemblyscript/std/assembly/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $node_modules/assemblyscript/std/assembly/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $node_modules/assemblyscript/std/assembly/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $node_modules/assemblyscript/std/assembly/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $node_modules/assemblyscript/std/assembly/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $node_modules/assemblyscript/std/assembly/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $node_modules/assemblyscript/std/assembly/internal/string/EMPTY i32 (i32.const 8))
 (global $contracts/utils/CHARACTER_MAP i32 (i32.const 12))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $HEAP_BASE i32 (i32.const 80))
 (memory $0 1)
 (data (i32.const 8) "\00\00\00\00")
 (data (i32.const 12) " \00\00\00.\001\002\003\004\005\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00")
 (export "apply" (func $contracts/helloworld/helloworld/apply))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 4 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/internal/arraybuffer.ts:17:77
  (i32.shl
   ;;@ ~lib/internal/arraybuffer.ts:17:9
   (i32.const 1)
   ;;@ ~lib/internal/arraybuffer.ts:17:21
   (i32.sub
    ;;@ ~lib/internal/arraybuffer.ts:17:29
    (i32.const 32)
    ;;@ ~lib/internal/arraybuffer.ts:17:39
    (i32.clz
     ;;@ ~lib/internal/arraybuffer.ts:17:48
     (i32.sub
      (i32.add
       (get_local $0)
       ;;@ ~lib/internal/arraybuffer.ts:17:61
       (i32.const 8)
      )
      ;;@ ~lib/internal/arraybuffer.ts:17:75
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/allocator/arena/allocate_memory (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ ~lib/allocator/arena.ts:17:2
  (if
   ;;@ ~lib/allocator/arena.ts:17:6
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
    ;;@ ~lib/allocator/arena.ts:19:4
    (set_local $1
     ;;@ ~lib/allocator/arena.ts:19:14
     (get_global $~lib/allocator/arena/offset)
    )
    ;;@ ~lib/allocator/arena.ts:20:4
    (set_local $2
     ;;@ ~lib/allocator/arena.ts:20:17
     (i32.and
      (i32.add
       ;;@ ~lib/allocator/arena.ts:20:18
       (i32.add
        (get_local $1)
        ;;@ ~lib/allocator/arena.ts:20:24
        (get_local $0)
       )
       ;;@ ~lib/allocator/arena.ts:20:31
       (i32.const 7)
      )
      ;;@ ~lib/allocator/arena.ts:20:42
      (i32.xor
       ;;@ ~lib/allocator/arena.ts:20:43
       (i32.const 7)
       (i32.const -1)
      )
     )
    )
    ;;@ ~lib/allocator/arena.ts:21:4
    (set_local $3
     ;;@ ~lib/allocator/arena.ts:21:22
     (current_memory)
    )
    ;;@ ~lib/allocator/arena.ts:22:4
    (if
     ;;@ ~lib/allocator/arena.ts:22:8
     (i32.gt_u
      (get_local $2)
      ;;@ ~lib/allocator/arena.ts:22:17
      (i32.shl
       (get_local $3)
       ;;@ ~lib/allocator/arena.ts:22:39
       (i32.const 16)
      )
     )
     ;;@ ~lib/allocator/arena.ts:22:43
     (block
      ;;@ ~lib/allocator/arena.ts:23:6
      (set_local $4
       ;;@ ~lib/allocator/arena.ts:23:24
       (i32.shr_u
        (i32.and
         ;;@ ~lib/allocator/arena.ts:23:25
         (i32.add
          ;;@ ~lib/allocator/arena.ts:23:26
          (i32.sub
           (get_local $2)
           ;;@ ~lib/allocator/arena.ts:23:35
           (get_local $1)
          )
          ;;@ ~lib/allocator/arena.ts:23:41
          (i32.const 65535)
         )
         ;;@ ~lib/allocator/arena.ts:23:51
         (i32.xor
          ;;@ ~lib/allocator/arena.ts:23:52
          (i32.const 65535)
          (i32.const -1)
         )
        )
        ;;@ ~lib/allocator/arena.ts:23:64
        (i32.const 16)
       )
      )
      ;;@ ~lib/allocator/arena.ts:24:6
      (set_local $5
       ;;@ ~lib/allocator/arena.ts:24:24
       (select
        (tee_local $5
         ;;@ ~lib/allocator/arena.ts:24:28
         (get_local $3)
        )
        (tee_local $6
         ;;@ ~lib/allocator/arena.ts:24:41
         (get_local $4)
        )
        (i32.gt_s
         (get_local $5)
         (get_local $6)
        )
       )
      )
      ;;@ ~lib/allocator/arena.ts:25:6
      (if
       ;;@ ~lib/allocator/arena.ts:25:10
       (i32.lt_s
        (grow_memory
         ;;@ ~lib/allocator/arena.ts:25:22
         (get_local $5)
        )
        ;;@ ~lib/allocator/arena.ts:25:37
        (i32.const 0)
       )
       ;;@ ~lib/allocator/arena.ts:25:40
       (if
        ;;@ ~lib/allocator/arena.ts:26:12
        (i32.lt_s
         (grow_memory
          ;;@ ~lib/allocator/arena.ts:26:24
          (get_local $4)
         )
         ;;@ ~lib/allocator/arena.ts:26:39
         (i32.const 0)
        )
        ;;@ ~lib/allocator/arena.ts:26:42
        (unreachable)
       )
      )
     )
    )
    ;;@ ~lib/allocator/arena.ts:31:4
    (set_global $~lib/allocator/arena/offset
     ;;@ ~lib/allocator/arena.ts:31:13
     (get_local $2)
    )
    ;;@ ~lib/allocator/arena.ts:32:11
    (return
     (get_local $1)
    )
   )
  )
  ;;@ ~lib/allocator/arena.ts:34:9
  (i32.const 0)
 )
 (func $~lib/internal/arraybuffer/allocUnsafe (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ ~lib/internal/arraybuffer.ts:23:2
  (set_local $1
   ;;@ ~lib/internal/arraybuffer.ts:23:15
   (call $~lib/allocator/arena/allocate_memory
    ;;@ ~lib/internal/arraybuffer.ts:23:31
    (call $~lib/internal/arraybuffer/computeSize
     ;;@ ~lib/internal/arraybuffer.ts:23:43
     (get_local $0)
    )
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:24:2
  (i32.store
   ;;@ ~lib/internal/arraybuffer.ts:24:13
   (get_local $1)
   ;;@ ~lib/internal/arraybuffer.ts:24:21
   (get_local $0)
  )
  ;;@ ~lib/internal/arraybuffer.ts:25:39
  (get_local $1)
 )
 (func $~lib/memory/set_memory (; 7 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  ;;@ ~lib/memory.ts:196:2
  (if
   ;;@ ~lib/memory.ts:196:6
   (i32.eqz
    ;;@ ~lib/memory.ts:196:7
    (get_local $2)
   )
   ;;@ ~lib/memory.ts:196:10
   (return)
  )
  ;;@ ~lib/memory.ts:197:2
  (i32.store8
   ;;@ ~lib/memory.ts:197:12
   (get_local $0)
   ;;@ ~lib/memory.ts:197:18
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:198:2
  (i32.store8
   ;;@ ~lib/memory.ts:198:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:198:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:198:23
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:198:26
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
   ;;@ ~lib/memory.ts:201:22
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
   ;;@ ~lib/memory.ts:202:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:203:2
  (i32.store8
   ;;@ ~lib/memory.ts:203:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:203:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:203:23
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:203:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:204:2
  (i32.store8
   ;;@ ~lib/memory.ts:204:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:204:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:204:23
    (i32.const 3)
   )
   ;;@ ~lib/memory.ts:204:26
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
   ;;@ ~lib/memory.ts:206:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:207:2
  (i32.store8
   ;;@ ~lib/memory.ts:207:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:207:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:207:23
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:207:26
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
  ;;@ ~lib/memory.ts:211:2
  (set_local $3
   ;;@ ~lib/memory.ts:211:17
   (i32.and
    (i32.sub
     (i32.const 0)
     ;;@ ~lib/memory.ts:211:18
     (get_local $0)
    )
    ;;@ ~lib/memory.ts:211:25
    (i32.const 3)
   )
  )
  ;;@ ~lib/memory.ts:212:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:212:10
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:213:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:213:7
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:214:2
  (set_local $2
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:214:7
    (i32.const -4)
   )
  )
  ;;@ ~lib/memory.ts:216:2
  (set_local $4
   ;;@ ~lib/memory.ts:216:17
   (i32.mul
    (i32.div_u
     (i32.const -1)
     ;;@ ~lib/memory.ts:216:27
     (i32.const 255)
    )
    (i32.and
     ;;@ ~lib/memory.ts:216:33
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  ;;@ ~lib/memory.ts:219:2
  (i32.store
   ;;@ ~lib/memory.ts:219:13
   (get_local $0)
   ;;@ ~lib/memory.ts:219:19
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:220:2
  (i32.store
   ;;@ ~lib/memory.ts:220:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:220:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:220:24
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:220:27
   (get_local $4)
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
   ;;@ ~lib/memory.ts:222:23
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:223:2
  (i32.store
   ;;@ ~lib/memory.ts:223:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:223:20
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:223:23
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:224:2
  (i32.store
   ;;@ ~lib/memory.ts:224:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:224:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:224:24
    (i32.const 12)
   )
   ;;@ ~lib/memory.ts:224:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:225:2
  (i32.store
   ;;@ ~lib/memory.ts:225:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:225:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:225:24
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:225:27
   (get_local $4)
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
   ;;@ ~lib/memory.ts:227:24
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:228:2
  (i32.store
   ;;@ ~lib/memory.ts:228:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:228:20
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:228:24
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:229:2
  (i32.store
   ;;@ ~lib/memory.ts:229:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:229:20
    (i32.const 20)
   )
   ;;@ ~lib/memory.ts:229:24
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:230:2
  (i32.store
   ;;@ ~lib/memory.ts:230:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:230:20
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:230:24
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:231:2
  (i32.store
   ;;@ ~lib/memory.ts:231:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:231:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:231:24
    (i32.const 28)
   )
   ;;@ ~lib/memory.ts:231:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:232:2
  (i32.store
   ;;@ ~lib/memory.ts:232:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:232:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:232:24
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:232:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:233:2
  (i32.store
   ;;@ ~lib/memory.ts:233:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:233:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:233:24
    (i32.const 20)
   )
   ;;@ ~lib/memory.ts:233:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:234:2
  (i32.store
   ;;@ ~lib/memory.ts:234:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:234:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:234:24
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:234:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:237:2
  (set_local $3
   ;;@ ~lib/memory.ts:237:6
   (i32.add
    (i32.const 24)
    ;;@ ~lib/memory.ts:237:11
    (i32.and
     ;;@ ~lib/memory.ts:237:12
     (get_local $0)
     ;;@ ~lib/memory.ts:237:19
     (i32.const 4)
    )
   )
  )
  ;;@ ~lib/memory.ts:238:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:238:10
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:239:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:239:7
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:242:2
  (set_local $5
   ;;@ ~lib/memory.ts:242:17
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    ;;@ ~lib/memory.ts:242:28
    (i64.shl
     ;;@ ~lib/memory.ts:242:29
     (i64.extend_u/i32
      (get_local $4)
     )
     ;;@ ~lib/memory.ts:242:41
     (i64.const 32)
    )
   )
  )
  ;;@ ~lib/memory.ts:243:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/memory.ts:243:9
     (i32.ge_u
      (get_local $2)
      ;;@ ~lib/memory.ts:243:14
      (i32.const 32)
     )
     (block
      (block
       ;;@ ~lib/memory.ts:244:4
       (i64.store
        ;;@ ~lib/memory.ts:244:15
        (get_local $0)
        ;;@ ~lib/memory.ts:244:21
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:245:4
       (i64.store
        ;;@ ~lib/memory.ts:245:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:245:22
         (i32.const 8)
        )
        ;;@ ~lib/memory.ts:245:25
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:246:4
       (i64.store
        ;;@ ~lib/memory.ts:246:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:246:22
         (i32.const 16)
        )
        ;;@ ~lib/memory.ts:246:26
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:247:4
       (i64.store
        ;;@ ~lib/memory.ts:247:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:247:22
         (i32.const 24)
        )
        ;;@ ~lib/memory.ts:247:26
        (get_local $5)
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
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<u8,u32>#constructor (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  ;;@ ~lib/internal/typedarray.ts:19:4
  (set_local $2
   ;;@ ~lib/internal/typedarray.ts:19:21
   (i32.shl
    (get_local $1)
    ;;@ ~lib/internal/typedarray.ts:19:31
    (i32.const 0)
   )
  )
  ;;@ ~lib/internal/typedarray.ts:20:4
  (set_local $3
   ;;@ ~lib/internal/typedarray.ts:20:17
   (call $~lib/internal/arraybuffer/allocUnsafe
    ;;@ ~lib/internal/typedarray.ts:20:29
    (get_local $2)
   )
  )
  ;;@ ~lib/internal/typedarray.ts:21:4
  (call $~lib/memory/set_memory
   ;;@ ~lib/internal/typedarray.ts:21:15
   (i32.add
    (get_local $3)
    ;;@ ~lib/internal/typedarray.ts:21:43
    (i32.const 8)
   )
   ;;@ ~lib/internal/typedarray.ts:21:59
   (i32.const 0)
   ;;@ ~lib/internal/typedarray.ts:21:62
   (get_local $2)
  )
  ;;@ ~lib/internal/typedarray.ts:22:4
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/allocator/arena/allocate_memory
         (i32.const 12)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=8
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   ;;@ ~lib/internal/typedarray.ts:22:18
   (get_local $3)
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
   ;;@ ~lib/internal/typedarray.ts:24:22
   (get_local $2)
  )
  (get_local $0)
 )
 (func $contracts/datastream/DataStream#constructor (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $3
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 12)
       )
      )
      (i32.store
       (get_local $3)
       ;;@ contracts/datastream.ts:11:13
       (i32.const 0)
      )
      (i32.store offset=4
       (get_local $3)
       (get_local $1)
      )
      (i32.store offset=8
       (get_local $3)
       (get_local $2)
      )
      (get_local $3)
     )
    )
   )
  )
 )
 (func $contracts/helloworld/helloworld/get_ds (; 10 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ contracts/helloworld/helloworld.ts:34:4
  (set_local $0
   ;;@ contracts/helloworld/helloworld.ts:34:24
   (call $contracts/eoslib/action_data_size)
  )
  ;;@ contracts/helloworld/helloworld.ts:35:4
  (set_local $1
   ;;@ contracts/helloworld/helloworld.ts:35:27
   (call $~lib/internal/typedarray/TypedArray<u8,u32>#constructor
    (i32.const 0)
    ;;@ contracts/helloworld/helloworld.ts:35:42
    (get_local $0)
   )
  )
  ;;@ contracts/helloworld/helloworld.ts:36:8
  (drop
   (call $contracts/eoslib/read_action_data
    ;;@ contracts/helloworld/helloworld.ts:36:25
    (i32.load
     ;;@ contracts/helloworld/helloworld.ts:36:43
     (get_local $1)
    )
    ;;@ contracts/helloworld/helloworld.ts:36:56
    (get_local $0)
   )
  )
  ;;@ contracts/helloworld/helloworld.ts:37:4
  (set_local $2
   ;;@ contracts/helloworld/helloworld.ts:37:13
   (call $contracts/datastream/DataStream#constructor
    (i32.const 0)
    ;;@ contracts/helloworld/helloworld.ts:37:28
    (i32.load
     ;;@ contracts/helloworld/helloworld.ts:37:46
     (get_local $1)
    )
    ;;@ contracts/helloworld/helloworld.ts:37:59
    (get_local $0)
   )
  )
  ;;@ contracts/helloworld/helloworld.ts:38:11
  (get_local $2)
 )
 (func $~lib/string/String#charCodeAt (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/string.ts:38:4
  (if
   ;;@ ~lib/string.ts:38:8
   (i32.ge_u
    (get_local $1)
    ;;@ ~lib/string.ts:38:20
    (i32.load
     ;;@ ~lib/string.ts:38:25
     (get_local $0)
    )
   )
   ;;@ ~lib/string.ts:38:38
   (return
    ;;@ ~lib/string.ts:39:13
    (i32.const -1)
   )
  )
  ;;@ ~lib/string.ts:44:4
  (i32.load16_u offset=4
   ;;@ ~lib/string.ts:42:6
   (i32.add
    (get_local $0)
    ;;@ ~lib/string.ts:42:32
    (i32.shl
     ;;@ ~lib/string.ts:42:33
     (get_local $1)
     ;;@ ~lib/string.ts:42:47
     (i32.const 1)
    )
   )
  )
 )
 (func $contracts/utils/N (; 12 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ contracts/utils.ts:25:2
  (set_local $1
   ;;@ contracts/utils.ts:25:19
   (i64.const 0)
  )
  ;;@ contracts/utils.ts:26:2
  (set_local $2
   ;;@ contracts/utils.ts:26:19
   (i32.const 0)
  )
  ;;@ contracts/utils.ts:27:2
  (set_local $3
   ;;@ contracts/utils.ts:27:19
   (i32.load
    (get_local $0)
   )
  )
  ;;@ contracts/utils.ts:28:2
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ contracts/utils.ts:28:8
      (if (result i32)
       (tee_local $4
        (i32.lt_s
         (get_local $2)
         ;;@ contracts/utils.ts:28:12
         (get_local $3)
        )
       )
       ;;@ contracts/utils.ts:28:19
       (i32.lt_s
        (get_local $2)
        ;;@ contracts/utils.ts:28:23
        (i32.const 12)
       )
       (get_local $4)
      )
     )
    )
    ;;@ contracts/utils.ts:28:33
    (set_local $1
     (i64.or
      ;;@ contracts/utils.ts:29:4
      (get_local $1)
      ;;@ contracts/utils.ts:29:12
      (i64.shl
       (i64.and
        ;;@ contracts/utils.ts:29:13
        (block $contracts/utils/char_to_symbol|inlined.0 (result i64)
         (set_local $4
          ;;@ contracts/utils.ts:29:32
          (call $~lib/string/String#charCodeAt
           ;;@ contracts/utils.ts:29:28
           (get_local $0)
           ;;@ contracts/utils.ts:29:43
           (get_local $2)
          )
         )
         (if
          (if (result i32)
           (tee_local $5
            (i32.ge_s
             (get_local $4)
             (i32.const 97)
            )
           )
           (i32.le_s
            (get_local $4)
            (i32.const 122)
           )
           (get_local $5)
          )
          (br $contracts/utils/char_to_symbol|inlined.0
           (i64.extend_u/i32
            (i32.add
             (i32.sub
              (get_local $4)
              (i32.const 97)
             )
             (i32.const 6)
            )
           )
          )
         )
         (if
          (if (result i32)
           (tee_local $5
            (i32.ge_s
             (get_local $4)
             (i32.const 49)
            )
           )
           (i32.le_s
            (get_local $4)
            (i32.const 53)
           )
           (get_local $5)
          )
          (br $contracts/utils/char_to_symbol|inlined.0
           (i64.extend_u/i32
            (i32.add
             (i32.sub
              (get_local $4)
              (i32.const 49)
             )
             (i32.const 1)
            )
           )
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
         (i64.const 5)
         (i64.extend_u/i32
          ;;@ contracts/utils.ts:29:73
          (i32.add
           ;;@ contracts/utils.ts:29:74
           (get_local $2)
           ;;@ contracts/utils.ts:29:78
           (i32.const 1)
          )
         )
        )
       )
      )
     )
    )
    ;;@ contracts/utils.ts:28:28
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ contracts/utils.ts:31:2
  (set_local $1
   (i64.or
    (get_local $1)
    ;;@ contracts/utils.ts:31:10
    (i64.and
     (block $contracts/utils/char_to_symbol|inlined.1 (result i64)
      (set_local $4
       ;;@ contracts/utils.ts:31:29
       (call $~lib/string/String#charCodeAt
        ;;@ contracts/utils.ts:31:25
        (get_local $0)
        ;;@ contracts/utils.ts:31:40
        (i32.const 12)
       )
      )
      ;;@ contracts/utils.ts:19:2
      (if
       ;;@ contracts/utils.ts:19:5
       (if (result i32)
        (tee_local $5
         (i32.ge_s
          (get_local $4)
          ;;@ contracts/utils.ts:19:10
          (i32.const 97)
         )
        )
        ;;@ contracts/utils.ts:19:16
        (i32.le_s
         (get_local $4)
         ;;@ contracts/utils.ts:19:21
         (i32.const 122)
        )
        (get_local $5)
       )
       ;;@ contracts/utils.ts:19:44
       (br $contracts/utils/char_to_symbol|inlined.1
        ;;@ contracts/utils.ts:19:33
        (i64.extend_u/i32
         (i32.add
          (i32.sub
           ;;@ contracts/utils.ts:19:34
           (get_local $4)
           ;;@ contracts/utils.ts:19:38
           (i32.const 97)
          )
          ;;@ contracts/utils.ts:19:44
          (i32.const 6)
         )
        )
       )
      )
      ;;@ contracts/utils.ts:20:2
      (if
       ;;@ contracts/utils.ts:20:5
       (if (result i32)
        (tee_local $5
         (i32.ge_s
          (get_local $4)
          ;;@ contracts/utils.ts:20:10
          (i32.const 49)
         )
        )
        ;;@ contracts/utils.ts:20:16
        (i32.le_s
         (get_local $4)
         ;;@ contracts/utils.ts:20:22
         (i32.const 53)
        )
        (get_local $5)
       )
       ;;@ contracts/utils.ts:20:44
       (br $contracts/utils/char_to_symbol|inlined.1
        ;;@ contracts/utils.ts:20:33
        (i64.extend_u/i32
         (i32.add
          (i32.sub
           ;;@ contracts/utils.ts:20:34
           (get_local $4)
           ;;@ contracts/utils.ts:20:38
           (i32.const 49)
          )
          ;;@ contracts/utils.ts:20:44
          (i32.const 1)
         )
        )
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
  ;;@ contracts/utils.ts:32:9
  (get_local $1)
 )
 (func $contracts/utils/Name#constructor (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ contracts/utils.ts:39:4
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $2
        (call $~lib/allocator/arena/allocate_memory
         (i32.const 8)
        )
       )
       (i64.store
        (get_local $2)
        (i64.const 0)
       )
       (get_local $2)
      )
     )
    )
   )
   ;;@ contracts/utils.ts:39:17
   (call $contracts/utils/N
    ;;@ contracts/utils.ts:39:19
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $contracts/datastream/DataStream#read<u64> (; 14 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i64)
  ;;@ contracts/datastream.ts:43:4
  (set_local $1
   ;;@ contracts/datastream.ts:43:20
   (i64.load
    ;;@ contracts/datastream.ts:43:28
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     ;;@ contracts/datastream.ts:43:42
     (i32.load
      (get_local $0)
     )
    )
   )
  )
  ;;@ contracts/datastream.ts:44:4
  (i32.store
   (get_local $0)
   (i32.add
    (i32.load
     (get_local $0)
    )
    ;;@ contracts/datastream.ts:44:16
    (i32.const 8)
   )
  )
  ;;@ contracts/datastream.ts:45:11
  (get_local $1)
 )
 (func $contracts/datastream/DataStream#read<u8> (; 15 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ contracts/datastream.ts:43:4
  (set_local $1
   ;;@ contracts/datastream.ts:43:20
   (i32.load8_u
    ;;@ contracts/datastream.ts:43:28
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     ;;@ contracts/datastream.ts:43:42
     (i32.load
      (get_local $0)
     )
    )
   )
  )
  ;;@ contracts/datastream.ts:44:4
  (i32.store
   (get_local $0)
   (i32.add
    (i32.load
     (get_local $0)
    )
    ;;@ contracts/datastream.ts:44:16
    (i32.const 1)
   )
  )
  ;;@ contracts/datastream.ts:45:11
  (get_local $1)
 )
 (func $contracts/datastream/DataStream#readVarint32 (; 16 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ contracts/datastream.ts:19:4
  (set_local $1
   ;;@ contracts/datastream.ts:19:21
   (i32.const 0)
  )
  ;;@ contracts/datastream.ts:20:4
  (set_local $2
   ;;@ contracts/datastream.ts:20:21
   (i32.const 0)
  )
  ;;@ contracts/datastream.ts:21:4
  (block $break|0
   (loop $continue|0
    ;;@ contracts/datastream.ts:21:7
    (block
     ;;@ contracts/datastream.ts:22:6
     (set_local $3
      ;;@ contracts/datastream.ts:22:19
      (call $contracts/datastream/DataStream#read<u8>
       ;;@ contracts/datastream.ts:22:14
       (get_local $0)
      )
     )
     ;;@ contracts/datastream.ts:23:6
     (set_local $1
      (i32.or
       (get_local $1)
       ;;@ contracts/datastream.ts:23:15
       (i32.shl
        (i32.and
         ;;@ contracts/datastream.ts:23:21
         (get_local $3)
         ;;@ contracts/datastream.ts:23:25
         (i32.const 127)
        )
        ;;@ contracts/datastream.ts:23:34
        (i32.mul
         ;;@ contracts/datastream.ts:23:35
         (i32.const 7)
         ;;@ contracts/datastream.ts:23:39
         (block (result i32)
          (set_local $4
           (get_local $2)
          )
          (set_local $2
           (i32.add
            (get_local $4)
            (i32.const 1)
           )
          )
          (get_local $4)
         )
        )
       )
      )
     )
    )
    (br_if $continue|0
     ;;@ contracts/datastream.ts:24:13
     (i32.and
      (get_local $3)
      ;;@ contracts/datastream.ts:24:17
      (i32.const 128)
     )
    )
   )
  )
  ;;@ contracts/datastream.ts:25:11
  (get_local $1)
 )
 (func $node_modules/assemblyscript/std/assembly/internal/string/allocate (; 17 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:21:2
  (set_local $2
   ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:21:15
   (call $~lib/allocator/arena/allocate_memory
    ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:21:31
    (i32.add
     (i32.const 4)
     ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:21:45
     (i32.shl
      ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:21:46
      (get_local $0)
      ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:21:63
      (i32.const 1)
     )
    )
   )
  )
  ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:22:2
  (i32.store
   ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:22:13
   (get_local $2)
   ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:22:21
   (get_local $0)
  )
  ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:23:34
  (get_local $2)
 )
 (func $contracts/datastream/DataStream#readString (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ contracts/datastream.ts:61:4
  (set_local $1
   ;;@ contracts/datastream.ts:61:19
   (call $contracts/datastream/DataStream#readVarint32
    ;;@ contracts/datastream.ts:61:14
    (get_local $0)
   )
  )
  ;;@ contracts/datastream.ts:62:4
  (if
   ;;@ contracts/datastream.ts:62:7
   (i32.eq
    (get_local $1)
    ;;@ contracts/datastream.ts:62:14
    (i32.const 0)
   )
   ;;@ contracts/datastream.ts:62:24
   (return
    (i32.const 8)
   )
  )
  ;;@ contracts/datastream.ts:63:4
  (set_local $2
   ;;@ contracts/datastream.ts:63:12
   (call $node_modules/assemblyscript/std/assembly/internal/string/allocate
    ;;@ contracts/datastream.ts:63:21
    (get_local $1)
   )
  )
  ;;@ contracts/datastream.ts:65:4
  (set_local $3
   ;;@ contracts/datastream.ts:65:17
   (i32.const 0)
  )
  ;;@ contracts/datastream.ts:66:4
  (block $break|0
   (loop $continue|0
    (if
     ;;@ contracts/datastream.ts:66:10
     (i32.lt_u
      (get_local $3)
      ;;@ contracts/datastream.ts:66:12
      (get_local $1)
     )
     (block
      (block
       ;;@ contracts/datastream.ts:67:6
       (set_local $4
        ;;@ contracts/datastream.ts:67:25
        (call $contracts/datastream/DataStream#read<u8>
         ;;@ contracts/datastream.ts:67:20
         (get_local $0)
        )
       )
       ;;@ contracts/datastream.ts:68:6
       (i32.store16 offset=4
        ;;@ contracts/datastream.ts:68:17
        (i32.add
         (get_local $2)
         ;;@ contracts/datastream.ts:68:28
         (i32.shl
          ;;@ contracts/datastream.ts:68:29
          (get_local $3)
          ;;@ contracts/datastream.ts:68:34
          (i32.const 1)
         )
        )
        ;;@ contracts/datastream.ts:68:38
        (get_local $4)
       )
       ;;@ contracts/datastream.ts:69:6
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ contracts/datastream.ts:72:19
  (get_local $2)
 )
 (func $contracts/helloworld/helloworld/Message#constructor (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ contracts/helloworld/helloworld.ts:11:8
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $2
        (call $~lib/allocator/arena/allocate_memory
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $2)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $2)
        (i32.const 0)
       )
       (get_local $2)
      )
     )
    )
   )
   ;;@ contracts/helloworld/helloworld.ts:11:23
   (call $contracts/utils/Name#constructor
    (i32.const 0)
    ;;@ contracts/utils.ts:38:30
    (i32.const 8)
   )
  )
  ;;@ contracts/helloworld/helloworld.ts:12:8
  (i64.store
   (i32.load
    (get_local $0)
   )
   ;;@ contracts/helloworld/helloworld.ts:12:32
   (call $contracts/datastream/DataStream#read<u64>
    ;;@ contracts/helloworld/helloworld.ts:12:29
    (get_local $1)
   )
  )
  ;;@ contracts/helloworld/helloworld.ts:13:8
  (i32.store offset=4
   (get_local $0)
   ;;@ contracts/helloworld/helloworld.ts:13:23
   (call $contracts/datastream/DataStream#readString
    ;;@ contracts/helloworld/helloworld.ts:13:20
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/string/String#get:lengthUTF8 (; 20 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/string.ts:417:4
  (set_local $1
   ;;@ ~lib/string.ts:417:14
   (i32.const 1)
  )
  ;;@ ~lib/string.ts:418:4
  (set_local $2
   ;;@ ~lib/string.ts:418:21
   (i32.const 0)
  )
  ;;@ ~lib/string.ts:419:4
  (set_local $3
   ;;@ ~lib/string.ts:419:14
   (i32.load
    ;;@ ~lib/string.ts:419:21
    (get_local $0)
   )
  )
  ;;@ ~lib/string.ts:420:4
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/string.ts:420:11
     (i32.lt_u
      (get_local $2)
      ;;@ ~lib/string.ts:420:17
      (get_local $3)
     )
     (block
      (block
       ;;@ ~lib/string.ts:421:6
       (set_local $4
        ;;@ ~lib/string.ts:421:14
        (i32.load16_u offset=4
         ;;@ ~lib/string.ts:421:29
         (i32.add
          (get_local $0)
          ;;@ ~lib/string.ts:421:55
          (i32.shl
           ;;@ ~lib/string.ts:421:56
           (get_local $2)
           ;;@ ~lib/string.ts:421:63
           (i32.const 1)
          )
         )
        )
       )
       ;;@ ~lib/string.ts:422:6
       (if
        ;;@ ~lib/string.ts:422:10
        (i32.lt_u
         (get_local $4)
         ;;@ ~lib/string.ts:422:14
         (i32.const 128)
        )
        ;;@ ~lib/string.ts:422:19
        (block
         ;;@ ~lib/string.ts:423:8
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/string.ts:423:15
           (i32.const 1)
          )
         )
         ;;@ ~lib/string.ts:423:18
         (set_local $2
          (i32.add
           ;;@ ~lib/string.ts:423:20
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        ;;@ ~lib/string.ts:424:13
        (if
         ;;@ ~lib/string.ts:424:17
         (i32.lt_u
          (get_local $4)
          ;;@ ~lib/string.ts:424:21
          (i32.const 2048)
         )
         ;;@ ~lib/string.ts:424:27
         (block
          ;;@ ~lib/string.ts:425:8
          (set_local $1
           (i32.add
            (get_local $1)
            ;;@ ~lib/string.ts:425:15
            (i32.const 2)
           )
          )
          ;;@ ~lib/string.ts:425:18
          (set_local $2
           (i32.add
            ;;@ ~lib/string.ts:425:20
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         ;;@ ~lib/string.ts:426:13
         (if
          ;;@ ~lib/string.ts:428:10
          (if (result i32)
           (tee_local $5
            (if (result i32)
             (tee_local $5
              (i32.eq
               (i32.and
                ;;@ ~lib/string.ts:428:11
                (get_local $4)
                ;;@ ~lib/string.ts:428:15
                (i32.const 64512)
               )
               ;;@ ~lib/string.ts:428:26
               (i32.const 55296)
              )
             )
             ;;@ ~lib/string.ts:428:36
             (i32.lt_u
              (i32.add
               (get_local $2)
               ;;@ ~lib/string.ts:428:42
               (i32.const 1)
              )
              ;;@ ~lib/string.ts:428:46
              (get_local $3)
             )
             (get_local $5)
            )
           )
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
                 ;;@ ~lib/string.ts:429:54
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
           (get_local $5)
          )
          ;;@ ~lib/string.ts:430:10
          (block
           ;;@ ~lib/string.ts:431:10
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/string.ts:431:17
             (i32.const 4)
            )
           )
           ;;@ ~lib/string.ts:431:20
           (set_local $2
            (i32.add
             (get_local $2)
             ;;@ ~lib/string.ts:431:27
             (i32.const 2)
            )
           )
          )
          ;;@ ~lib/string.ts:432:15
          (block
           ;;@ ~lib/string.ts:433:10
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/string.ts:433:17
             (i32.const 3)
            )
           )
           ;;@ ~lib/string.ts:433:20
           (set_local $2
            (i32.add
             ;;@ ~lib/string.ts:433:22
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
  )
  ;;@ ~lib/string.ts:437:11
  (get_local $1)
 )
 (func $~lib/string/String#toUTF8 (; 21 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  ;;@ ~lib/string.ts:441:4
  (set_local $1
   ;;@ ~lib/string.ts:441:14
   (call $~lib/allocator/arena/allocate_memory
    ;;@ ~lib/string.ts:441:30
    (call $~lib/string/String#get:lengthUTF8
     ;;@ ~lib/string.ts:441:37
     (get_local $0)
    )
   )
  )
  ;;@ ~lib/string.ts:442:4
  (set_local $2
   ;;@ ~lib/string.ts:442:21
   (i32.const 0)
  )
  ;;@ ~lib/string.ts:443:4
  (set_local $3
   ;;@ ~lib/string.ts:443:14
   (i32.load
    ;;@ ~lib/string.ts:443:21
    (get_local $0)
   )
  )
  ;;@ ~lib/string.ts:444:4
  (set_local $4
   ;;@ ~lib/string.ts:444:21
   (i32.const 0)
  )
  ;;@ ~lib/string.ts:445:4
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/string.ts:445:11
     (i32.lt_u
      (get_local $2)
      ;;@ ~lib/string.ts:445:17
      (get_local $3)
     )
     (block
      (block
       ;;@ ~lib/string.ts:446:6
       (set_local $5
        ;;@ ~lib/string.ts:446:15
        (i32.load16_u offset=4
         ;;@ ~lib/string.ts:446:30
         (i32.add
          (get_local $0)
          ;;@ ~lib/string.ts:446:56
          (i32.shl
           ;;@ ~lib/string.ts:446:57
           (get_local $2)
           ;;@ ~lib/string.ts:446:64
           (i32.const 1)
          )
         )
        )
       )
       ;;@ ~lib/string.ts:447:6
       (if
        ;;@ ~lib/string.ts:447:10
        (i32.lt_u
         (get_local $5)
         ;;@ ~lib/string.ts:447:15
         (i32.const 128)
        )
        ;;@ ~lib/string.ts:447:20
        (block
         ;;@ ~lib/string.ts:448:8
         (i32.store8
          ;;@ ~lib/string.ts:448:18
          (i32.add
           (get_local $1)
           ;;@ ~lib/string.ts:448:24
           (get_local $4)
          )
          ;;@ ~lib/string.ts:448:29
          (get_local $5)
         )
         ;;@ ~lib/string.ts:449:8
         (set_local $4
          (i32.add
           ;;@ ~lib/string.ts:449:10
           (get_local $4)
           (i32.const 1)
          )
         )
         ;;@ ~lib/string.ts:449:15
         (set_local $2
          (i32.add
           ;;@ ~lib/string.ts:449:17
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        ;;@ ~lib/string.ts:450:13
        (if
         ;;@ ~lib/string.ts:450:17
         (i32.lt_u
          (get_local $5)
          ;;@ ~lib/string.ts:450:22
          (i32.const 2048)
         )
         ;;@ ~lib/string.ts:450:28
         (block
          ;;@ ~lib/string.ts:451:8
          (set_local $6
           ;;@ ~lib/string.ts:451:18
           (i32.add
            (get_local $1)
            ;;@ ~lib/string.ts:451:24
            (get_local $4)
           )
          )
          ;;@ ~lib/string.ts:452:8
          (i32.store8
           ;;@ ~lib/string.ts:452:18
           (get_local $6)
           ;;@ ~lib/string.ts:452:23
           (i32.or
            (i32.shr_u
             (get_local $5)
             ;;@ ~lib/string.ts:452:29
             (i32.const 6)
            )
            ;;@ ~lib/string.ts:452:38
            (i32.const 192)
           )
          )
          ;;@ ~lib/string.ts:453:8
          (i32.store8 offset=1
           ;;@ ~lib/string.ts:453:18
           (get_local $6)
           ;;@ ~lib/string.ts:453:23
           (i32.or
            (i32.and
             (get_local $5)
             ;;@ ~lib/string.ts:453:33
             (i32.const 63)
            )
            ;;@ ~lib/string.ts:453:38
            (i32.const 128)
           )
          )
          ;;@ ~lib/string.ts:454:8
          (set_local $4
           (i32.add
            (get_local $4)
            ;;@ ~lib/string.ts:454:15
            (i32.const 2)
           )
          )
          ;;@ ~lib/string.ts:454:18
          (set_local $2
           (i32.add
            ;;@ ~lib/string.ts:454:20
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         ;;@ ~lib/string.ts:455:13
         (block
          ;;@ ~lib/string.ts:456:8
          (set_local $6
           ;;@ ~lib/string.ts:456:18
           (i32.add
            (get_local $1)
            ;;@ ~lib/string.ts:456:24
            (get_local $4)
           )
          )
          ;;@ ~lib/string.ts:457:8
          (if
           ;;@ ~lib/string.ts:457:12
           (if (result i32)
            (tee_local $7
             (i32.eq
              (i32.and
               ;;@ ~lib/string.ts:457:13
               (get_local $5)
               ;;@ ~lib/string.ts:457:18
               (i32.const 64512)
              )
              ;;@ ~lib/string.ts:457:29
              (i32.const 55296)
             )
            )
            ;;@ ~lib/string.ts:457:39
            (i32.lt_u
             (i32.add
              (get_local $2)
              ;;@ ~lib/string.ts:457:45
              (i32.const 1)
             )
             ;;@ ~lib/string.ts:457:49
             (get_local $3)
            )
            (get_local $7)
           )
           ;;@ ~lib/string.ts:457:54
           (block
            ;;@ ~lib/string.ts:458:10
            (set_local $7
             ;;@ ~lib/string.ts:458:19
             (i32.load16_u offset=4
              ;;@ ~lib/string.ts:458:34
              (i32.add
               (get_local $0)
               ;;@ ~lib/string.ts:458:60
               (i32.shl
                ;;@ ~lib/string.ts:458:61
                (i32.add
                 ;;@ ~lib/string.ts:458:62
                 (get_local $2)
                 ;;@ ~lib/string.ts:458:68
                 (i32.const 1)
                )
                ;;@ ~lib/string.ts:458:74
                (i32.const 1)
               )
              )
             )
            )
            ;;@ ~lib/string.ts:459:10
            (if
             ;;@ ~lib/string.ts:459:14
             (i32.eq
              (i32.and
               ;;@ ~lib/string.ts:459:15
               (get_local $7)
               ;;@ ~lib/string.ts:459:20
               (i32.const 64512)
              )
              ;;@ ~lib/string.ts:459:31
              (i32.const 56320)
             )
             ;;@ ~lib/string.ts:459:39
             (block
              ;;@ ~lib/string.ts:460:12
              (set_local $5
               ;;@ ~lib/string.ts:460:17
               (i32.add
                (i32.add
                 (i32.const 65536)
                 ;;@ ~lib/string.ts:460:27
                 (i32.shl
                  ;;@ ~lib/string.ts:460:28
                  (i32.and
                   ;;@ ~lib/string.ts:460:29
                   (get_local $5)
                   ;;@ ~lib/string.ts:460:34
                   (i32.const 1023)
                  )
                  ;;@ ~lib/string.ts:460:45
                  (i32.const 10)
                 )
                )
                ;;@ ~lib/string.ts:460:51
                (i32.and
                 ;;@ ~lib/string.ts:460:52
                 (get_local $7)
                 ;;@ ~lib/string.ts:460:57
                 (i32.const 1023)
                )
               )
              )
              ;;@ ~lib/string.ts:461:12
              (i32.store8
               ;;@ ~lib/string.ts:461:22
               (get_local $6)
               ;;@ ~lib/string.ts:461:27
               (i32.or
                (i32.shr_u
                 (get_local $5)
                 ;;@ ~lib/string.ts:461:33
                 (i32.const 18)
                )
                ;;@ ~lib/string.ts:461:43
                (i32.const 240)
               )
              )
              ;;@ ~lib/string.ts:462:12
              (i32.store8 offset=1
               ;;@ ~lib/string.ts:462:22
               (get_local $6)
               ;;@ ~lib/string.ts:462:27
               (i32.or
                (i32.and
                 (i32.shr_u
                  (get_local $5)
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
               ;;@ ~lib/string.ts:463:22
               (get_local $6)
               ;;@ ~lib/string.ts:463:27
               (i32.or
                (i32.and
                 (i32.shr_u
                  (get_local $5)
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
               ;;@ ~lib/string.ts:464:22
               (get_local $6)
               ;;@ ~lib/string.ts:464:27
               (i32.or
                (i32.and
                 (get_local $5)
                 ;;@ ~lib/string.ts:464:38
                 (i32.const 63)
                )
                ;;@ ~lib/string.ts:464:43
                (i32.const 128)
               )
              )
              ;;@ ~lib/string.ts:465:12
              (set_local $4
               (i32.add
                (get_local $4)
                ;;@ ~lib/string.ts:465:19
                (i32.const 4)
               )
              )
              ;;@ ~lib/string.ts:465:22
              (set_local $2
               (i32.add
                (get_local $2)
                ;;@ ~lib/string.ts:465:29
                (i32.const 2)
               )
              )
              ;;@ ~lib/string.ts:466:12
              (br $continue|0)
             )
            )
           )
          )
          ;;@ ~lib/string.ts:469:8
          (i32.store8
           ;;@ ~lib/string.ts:469:18
           (get_local $6)
           ;;@ ~lib/string.ts:469:23
           (i32.or
            (i32.shr_u
             (get_local $5)
             ;;@ ~lib/string.ts:469:29
             (i32.const 12)
            )
            ;;@ ~lib/string.ts:469:39
            (i32.const 224)
           )
          )
          ;;@ ~lib/string.ts:470:8
          (i32.store8 offset=1
           ;;@ ~lib/string.ts:470:18
           (get_local $6)
           ;;@ ~lib/string.ts:470:23
           (i32.or
            (i32.and
             (i32.shr_u
              (get_local $5)
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
           ;;@ ~lib/string.ts:471:18
           (get_local $6)
           ;;@ ~lib/string.ts:471:23
           (i32.or
            (i32.and
             (get_local $5)
             ;;@ ~lib/string.ts:471:34
             (i32.const 63)
            )
            ;;@ ~lib/string.ts:471:39
            (i32.const 128)
           )
          )
          ;;@ ~lib/string.ts:472:8
          (set_local $4
           (i32.add
            (get_local $4)
            ;;@ ~lib/string.ts:472:15
            (i32.const 3)
           )
          )
          ;;@ ~lib/string.ts:472:18
          (set_local $2
           (i32.add
            ;;@ ~lib/string.ts:472:20
            (get_local $2)
            (i32.const 1)
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
  )
  ;;@ ~lib/string.ts:475:4
  (i32.store8
   ;;@ ~lib/string.ts:475:14
   (i32.add
    (get_local $1)
    ;;@ ~lib/string.ts:475:20
    (get_local $4)
   )
   ;;@ ~lib/string.ts:475:25
   (i32.const 0)
  )
  ;;@ ~lib/string.ts:476:11
  (get_local $1)
 )
 (func $contracts/helloworld/helloworld/Message#print_message (; 22 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  ;;@ contracts/helloworld/helloworld.ts:17:8
  (block $contracts/utils/print|inlined.0
   (set_local $1
    ;;@ contracts/helloworld/helloworld.ts:17:14
    (i32.load offset=4
     (get_local $0)
    )
   )
   ;;@ contracts/utils.ts:9:6
   (call $contracts/eoslib/prints
    ;;@ contracts/utils.ts:9:17
    (call $~lib/string/String#toUTF8
     ;;@ contracts/utils.ts:9:13
     (get_local $1)
    )
   )
  )
  ;;@ contracts/helloworld/helloworld.ts:18:12
  (call $contracts/eoslib/printn
   ;;@ contracts/helloworld/helloworld.ts:18:19
   (i64.load
    (i32.load
     (get_local $0)
    )
   )
  )
 )
 (func $contracts/helloworld/helloworld/apply (; 23 ;) (type $IIIv) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  ;;@ contracts/helloworld/helloworld.ts:27:4
  (set_local $3
   ;;@ contracts/helloworld/helloworld.ts:27:26
   (call $contracts/helloworld/helloworld/get_ds)
  )
  ;;@ contracts/helloworld/helloworld.ts:28:4
  (set_local $4
   ;;@ contracts/helloworld/helloworld.ts:28:18
   (call $contracts/helloworld/helloworld/Message#constructor
    (i32.const 0)
    ;;@ contracts/helloworld/helloworld.ts:28:30
    (get_local $3)
   )
  )
  ;;@ contracts/helloworld/helloworld.ts:29:12
  (call $contracts/helloworld/helloworld/Message#print_message
   ;;@ contracts/helloworld/helloworld.ts:29:4
   (get_local $4)
  )
 )
 (func $start (; 24 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   ;;@ ~lib/allocator/arena.ts:12:25
   (i32.and
    (i32.add
     ;;@ ~lib/allocator/arena.ts:12:26
     (get_global $HEAP_BASE)
     ;;@ ~lib/allocator/arena.ts:12:38
     (i32.const 7)
    )
    ;;@ ~lib/allocator/arena.ts:12:49
    (i32.xor
     ;;@ ~lib/allocator/arena.ts:12:50
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   ;;@ ~lib/allocator/arena.ts:13:20
   (get_global $~lib/allocator/arena/startOffset)
  )
  ;;@ contracts/datastream.ts:86:1
  (nop)
 )
)
