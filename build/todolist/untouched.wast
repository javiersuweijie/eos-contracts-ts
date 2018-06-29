(module
 (type $IIIv (func (param i64 i64 i64)))
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iIIIi (func (param i32 i64 i64 i64) (result i32)))
 (type $iI (func (param i32) (result i64)))
 (type $iiIv (func (param i32 i32 i64)))
 (type $iiv (func (param i32 i32)))
 (type $Iv (func (param i64)))
 (type $IIIi (func (param i64 i64 i64) (result i32)))
 (type $IIIIi (func (param i64 i64 i64 i64) (result i32)))
 (type $iIv (func (param i32 i64)))
 (type $IIIIiii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $iv (func (param i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $iIiiv (func (param i32 i64 i32 i32)))
 (type $iIIv (func (param i32 i64 i64)))
 (type $v (func))
 (import "eoslib" "action_data_size" (func $contracts/eoslib/action_data_size (result i32)))
 (import "eoslib" "read_action_data" (func $contracts/eoslib/read_action_data (param i32 i32) (result i32)))
 (import "eoslib" "eosio_assert" (func $contracts/eoslib/eosio_assert (param i32 i32)))
 (import "eoslib" "require_auth" (func $contracts/eoslib/require_auth (param i64)))
 (import "eoslib" "db_end_i64" (func $contracts/eoslib/db_end_i64 (param i64 i64 i64) (result i32)))
 (import "eoslib" "db_lowerbound_i64" (func $contracts/eoslib/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "eoslib" "db_previous_i64" (func $contracts/eoslib/db_previous_i64 (param i32 i32) (result i32)))
 (import "eoslib" "db_get_i64" (func $contracts/eoslib/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "eoslib" "db_store_i64" (func $contracts/eoslib/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "eoslib" "db_find_i64" (func $contracts/eoslib/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "eoslib" "prints" (func $contracts/eoslib/prints (param i32)))
 (import "eoslib" "db_update_i64" (func $contracts/eoslib/db_update_i64 (param i32 i64 i32 i32)))
 (import "eoslib" "db_remove_i64" (func $contracts/eoslib/db_remove_i64 (param i32)))
 (import "eoslib" "db_next_i64" (func $contracts/eoslib/db_next_i64 (param i32 i32) (result i32)))
 (import "eoslib" "printi" (func $contracts/eoslib/printi (param i64)))
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
 (global $~lib/internal/string/EMPTY i32 (i32.const 8))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $HEAP_BASE i32 (i32.const 328))
 (memory $0 1)
 (data (i32.const 8) "\00\00\00\00")
 (data (i32.const 12) " \00\00\00.\001\002\003\004\005\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00")
 (data (i32.const 80) "\04\00\00\00t\00o\00d\00o\00")
 (data (i32.const 92) "\03\00\00\00a\00d\00d\00")
 (data (i32.const 104) "\0d\00\00\00T\00a\00s\00k\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 136) "\03\00\00\00g\00e\00t\00")
 (data (i32.const 148) "\0e\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 180) "\01\00\00\00|\00")
 (data (i32.const 188) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 200) "\06\00\00\00u\00p\00d\00a\00t\00e\00")
 (data (i32.const 216) "\06\00\00\00r\00e\00m\00o\00v\00e\00")
 (data (i32.const 232) "\t\00\00\00r\00e\00m\00o\00v\00e\00a\00l\00l\00")
 (data (i32.const 256) "\08\00\00\00R\00e\00m\00o\00v\00e\00d\00 \00")
 (data (i32.const 276) "\06\00\00\00a\00s\00s\00i\00g\00n\00")
 (data (i32.const 292) "\10\00\00\00A\00c\00t\00i\00o\00n\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00")
 (export "apply" (func $contracts/todolist/todo/apply))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 15 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/allocator/arena/allocate_memory (; 16 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocUnsafe (; 17 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/set_memory (; 18 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/typedarray/TypedArray<u8,u32>#constructor (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $contracts/datastream/DataStream#constructor (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $contracts/utils/get_ds (; 21 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ contracts/utils.ts:61:2
  (set_local $0
   ;;@ contracts/utils.ts:61:22
   (call $contracts/eoslib/action_data_size)
  )
  ;;@ contracts/utils.ts:62:2
  (set_local $1
   ;;@ contracts/utils.ts:62:25
   (call $~lib/internal/typedarray/TypedArray<u8,u32>#constructor
    (i32.const 0)
    ;;@ contracts/utils.ts:62:40
    (get_local $0)
   )
  )
  ;;@ contracts/utils.ts:63:6
  (drop
   (call $contracts/eoslib/read_action_data
    ;;@ contracts/utils.ts:63:23
    (i32.load
     ;;@ contracts/utils.ts:63:41
     (get_local $1)
    )
    ;;@ contracts/utils.ts:63:54
    (get_local $0)
   )
  )
  ;;@ contracts/utils.ts:64:2
  (set_local $2
   ;;@ contracts/utils.ts:64:11
   (call $contracts/datastream/DataStream#constructor
    (i32.const 0)
    ;;@ contracts/utils.ts:64:26
    (i32.load
     ;;@ contracts/utils.ts:64:44
     (get_local $1)
    )
    ;;@ contracts/utils.ts:64:57
    (get_local $0)
   )
  )
  ;;@ contracts/utils.ts:65:9
  (get_local $2)
 )
 (func $~lib/string/String#charCodeAt (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $contracts/utils/N (; 23 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $contracts/todolist/todo/TodoContract#constructor (; 24 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  ;;@ contracts/todolist/todo.ts:52:8
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/allocator/arena/allocate_memory
         (i32.const 44)
        )
       )
       (i64.store
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=16
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=24
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=32
        (get_local $4)
        (i64.const 0)
       )
       (i32.store offset=40
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   ;;@ contracts/todolist/todo.ts:52:24
   (get_local $1)
  )
  ;;@ contracts/todolist/todo.ts:53:8
  (i64.store offset=8
   (get_local $0)
   ;;@ contracts/todolist/todo.ts:53:20
   (get_local $2)
  )
  ;;@ contracts/todolist/todo.ts:54:8
  (i64.store offset=16
   (get_local $0)
   ;;@ contracts/todolist/todo.ts:54:22
   (get_local $3)
  )
  ;;@ contracts/todolist/todo.ts:55:8
  (i64.store offset=24
   (get_local $0)
   ;;@ contracts/todolist/todo.ts:55:21
   (call $contracts/utils/N
    ;;@ contracts/todolist/todo.ts:55:23
    (i32.const 80)
   )
  )
  ;;@ contracts/todolist/todo.ts:56:8
  (i64.store offset=32
   (get_local $0)
   ;;@ contracts/todolist/todo.ts:56:21
   (call $contracts/utils/N
    ;;@ contracts/todolist/todo.ts:56:23
    (i32.const 80)
   )
  )
  (get_local $0)
 )
 (func $contracts/datastream/DataStream#read<u8> (; 25 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $contracts/datastream/DataStream#readVarint32 (; 26 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $node_modules/assemblyscript/std/assembly/internal/string/allocate (; 27 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $contracts/datastream/DataStream#readString (; 28 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $contracts/datastream/DataStream#read<u64> (; 29 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $~lib/string/String#get:lengthUTF8 (; 30 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/string/String#toUTF8 (; 31 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $contracts/datastream/DataStream#read<bool> (; 32 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $contracts/todolist/todo/Todo#from_ds (; 33 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ contracts/todolist/todo.ts:16:8
  (i64.store
   (get_local $0)
   ;;@ contracts/todolist/todo.ts:16:26
   (call $contracts/datastream/DataStream#read<u64>
    ;;@ contracts/todolist/todo.ts:16:23
    (get_local $1)
   )
  )
  ;;@ contracts/todolist/todo.ts:17:8
  (i64.store offset=16
   (get_local $0)
   ;;@ contracts/todolist/todo.ts:17:26
   (call $contracts/datastream/DataStream#read<u64>
    ;;@ contracts/todolist/todo.ts:17:23
    (get_local $1)
   )
  )
  ;;@ contracts/todolist/todo.ts:18:8
  (i64.store offset=24
   (get_local $0)
   ;;@ contracts/todolist/todo.ts:18:26
   (call $contracts/datastream/DataStream#read<u64>
    ;;@ contracts/todolist/todo.ts:18:23
    (get_local $1)
   )
  )
  ;;@ contracts/todolist/todo.ts:19:8
  (i32.store8 offset=12
   (get_local $0)
   ;;@ contracts/todolist/todo.ts:19:27
   (call $contracts/datastream/DataStream#read<bool>
    ;;@ contracts/todolist/todo.ts:19:24
    (get_local $1)
   )
  )
  ;;@ contracts/todolist/todo.ts:20:8
  (i32.store offset=8
   (get_local $0)
   ;;@ contracts/todolist/todo.ts:20:23
   (call $contracts/datastream/DataStream#readString
    ;;@ contracts/todolist/todo.ts:20:20
    (get_local $1)
   )
  )
 )
 (func $contracts/datastream/DataStream#store<u64> (; 34 ;) (type $iIv) (param $0 i32) (param $1 i64)
  ;;@ contracts/datastream.ts:38:4
  (i64.store
   ;;@ contracts/datastream.ts:38:13
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ contracts/datastream.ts:38:27
    (i32.load
     (get_local $0)
    )
   )
   ;;@ contracts/datastream.ts:38:37
   (get_local $1)
  )
  ;;@ contracts/datastream.ts:39:4
  (i32.store
   (get_local $0)
   (i32.add
    (i32.load
     (get_local $0)
    )
    ;;@ contracts/datastream.ts:39:16
    (i32.const 8)
   )
  )
 )
 (func $contracts/datastream/DataStream#store<bool> (; 35 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ contracts/datastream.ts:38:4
  (i32.store8
   ;;@ contracts/datastream.ts:38:13
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ contracts/datastream.ts:38:27
    (i32.load
     (get_local $0)
    )
   )
   ;;@ contracts/datastream.ts:38:37
   (get_local $1)
  )
  ;;@ contracts/datastream.ts:39:4
  (i32.store
   (get_local $0)
   (i32.add
    (i32.load
     (get_local $0)
    )
    ;;@ contracts/datastream.ts:39:16
    (i32.const 1)
   )
  )
 )
 (func $contracts/datastream/DataStream#store<u8> (; 36 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ contracts/datastream.ts:38:4
  (i32.store8
   ;;@ contracts/datastream.ts:38:13
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ contracts/datastream.ts:38:27
    (i32.load
     (get_local $0)
    )
   )
   ;;@ contracts/datastream.ts:38:37
   (get_local $1)
  )
  ;;@ contracts/datastream.ts:39:4
  (i32.store
   (get_local $0)
   (i32.add
    (i32.load
     (get_local $0)
    )
    ;;@ contracts/datastream.ts:39:16
    (i32.const 1)
   )
  )
 )
 (func $contracts/datastream/DataStream#writeVarint32 (; 37 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ contracts/datastream.ts:29:4
  (block $break|0
   (loop $continue|0
    ;;@ contracts/datastream.ts:29:7
    (block
     ;;@ contracts/datastream.ts:30:6
     (set_local $2
      ;;@ contracts/datastream.ts:30:20
      (i32.and
       (get_local $1)
       ;;@ contracts/datastream.ts:30:32
       (i32.const 127)
      )
     )
     ;;@ contracts/datastream.ts:31:6
     (set_local $1
      (i32.shr_u
       (get_local $1)
       ;;@ contracts/datastream.ts:31:16
       (i32.const 7)
      )
     )
     ;;@ contracts/datastream.ts:32:6
     (set_local $2
      (i32.or
       (get_local $2)
       ;;@ contracts/datastream.ts:32:11
       (i32.shl
        ;;@ contracts/datastream.ts:32:12
        (if (result i32)
         ;;@ contracts/datastream.ts:32:13
         (i32.gt_u
          (get_local $1)
          ;;@ contracts/datastream.ts:32:21
          (i32.const 0)
         )
         ;;@ contracts/datastream.ts:32:25
         (i32.const 1)
         ;;@ contracts/datastream.ts:32:29
         (i32.const 0)
        )
        ;;@ contracts/datastream.ts:32:35
        (i32.const 7)
       )
      )
     )
     ;;@ contracts/datastream.ts:33:11
     (call $contracts/datastream/DataStream#store<u8>
      ;;@ contracts/datastream.ts:33:6
      (get_local $0)
      ;;@ contracts/datastream.ts:33:21
      (get_local $2)
     )
    )
    (br_if $continue|0
     ;;@ contracts/datastream.ts:34:13
     (get_local $1)
    )
   )
  )
 )
 (func $~lib/memory/copy_memory (; 38 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/memory.ts:8:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/memory.ts:8:9
     (if (result i32)
      (get_local $2)
      ;;@ ~lib/memory.ts:8:14
      (i32.and
       ;;@ ~lib/memory.ts:8:15
       (get_local $1)
       ;;@ ~lib/memory.ts:8:21
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       ;;@ ~lib/memory.ts:9:4
       (i32.store8
        ;;@ ~lib/memory.ts:9:14
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:9:22
        (i32.load8_u
         ;;@ ~lib/memory.ts:9:31
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:10:4
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:14:2
  (if
   ;;@ ~lib/memory.ts:14:6
   (i32.eq
    (i32.and
     ;;@ ~lib/memory.ts:14:7
     (get_local $0)
     ;;@ ~lib/memory.ts:14:14
     (i32.const 3)
    )
    ;;@ ~lib/memory.ts:14:20
    (i32.const 0)
   )
   ;;@ ~lib/memory.ts:14:23
   (block
    (block $break|1
     (loop $continue|1
      (if
       ;;@ ~lib/memory.ts:15:11
       (i32.ge_u
        (get_local $2)
        ;;@ ~lib/memory.ts:15:16
        (i32.const 16)
       )
       (block
        (block
         ;;@ ~lib/memory.ts:16:6
         (i32.store
          ;;@ ~lib/memory.ts:16:17
          (get_local $0)
          ;;@ ~lib/memory.ts:16:28
          (i32.load
           ;;@ ~lib/memory.ts:16:38
           (get_local $1)
          )
         )
         ;;@ ~lib/memory.ts:17:6
         (i32.store
          ;;@ ~lib/memory.ts:17:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:17:25
           (i32.const 4)
          )
          ;;@ ~lib/memory.ts:17:28
          (i32.load
           ;;@ ~lib/memory.ts:17:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:17:45
            (i32.const 4)
           )
          )
         )
         ;;@ ~lib/memory.ts:18:6
         (i32.store
          ;;@ ~lib/memory.ts:18:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:18:25
           (i32.const 8)
          )
          ;;@ ~lib/memory.ts:18:28
          (i32.load
           ;;@ ~lib/memory.ts:18:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:18:45
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:19:6
         (i32.store
          ;;@ ~lib/memory.ts:19:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:19:24
           (i32.const 12)
          )
          ;;@ ~lib/memory.ts:19:28
          (i32.load
           ;;@ ~lib/memory.ts:19:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:19:44
            (i32.const 12)
           )
          )
         )
         ;;@ ~lib/memory.ts:20:6
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/memory.ts:20:13
           (i32.const 16)
          )
         )
         ;;@ ~lib/memory.ts:20:17
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:20:25
           (i32.const 16)
          )
         )
         ;;@ ~lib/memory.ts:20:29
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ ~lib/memory.ts:20:34
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:22:4
    (if
     ;;@ ~lib/memory.ts:22:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:22:12
      (i32.const 8)
     )
     ;;@ ~lib/memory.ts:22:15
     (block
      ;;@ ~lib/memory.ts:23:6
      (i32.store
       ;;@ ~lib/memory.ts:23:17
       (get_local $0)
       ;;@ ~lib/memory.ts:23:27
       (i32.load
        ;;@ ~lib/memory.ts:23:37
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:24:6
      (i32.store
       ;;@ ~lib/memory.ts:24:17
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:24:24
        (i32.const 4)
       )
       ;;@ ~lib/memory.ts:24:27
       (i32.load
        ;;@ ~lib/memory.ts:24:37
        (i32.add
         (get_local $1)
         ;;@ ~lib/memory.ts:24:43
         (i32.const 4)
        )
       )
      )
      ;;@ ~lib/memory.ts:25:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:25:14
        (i32.const 8)
       )
      )
      ;;@ ~lib/memory.ts:25:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:25:24
        (i32.const 8)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:27:4
    (if
     ;;@ ~lib/memory.ts:27:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:27:12
      (i32.const 4)
     )
     ;;@ ~lib/memory.ts:27:15
     (block
      ;;@ ~lib/memory.ts:28:6
      (i32.store
       ;;@ ~lib/memory.ts:28:17
       (get_local $0)
       ;;@ ~lib/memory.ts:28:23
       (i32.load
        ;;@ ~lib/memory.ts:28:33
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:29:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:29:14
        (i32.const 4)
       )
      )
      ;;@ ~lib/memory.ts:29:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:29:24
        (i32.const 4)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:31:4
    (if
     ;;@ ~lib/memory.ts:31:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:31:12
      (i32.const 2)
     )
     ;;@ ~lib/memory.ts:31:15
     (block
      ;;@ ~lib/memory.ts:32:6
      (i32.store16
       ;;@ ~lib/memory.ts:32:17
       (get_local $0)
       ;;@ ~lib/memory.ts:32:23
       (i32.load16_u
        ;;@ ~lib/memory.ts:32:33
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:33:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:33:14
        (i32.const 2)
       )
      )
      ;;@ ~lib/memory.ts:33:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:33:24
        (i32.const 2)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:35:4
    (if
     ;;@ ~lib/memory.ts:35:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:35:12
      (i32.const 1)
     )
     ;;@ ~lib/memory.ts:35:15
     (i32.store8
      ;;@ ~lib/memory.ts:36:16
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      ;;@ ~lib/memory.ts:36:24
      (i32.load8_u
       ;;@ ~lib/memory.ts:36:33
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:38:4
    (return)
   )
  )
  ;;@ ~lib/memory.ts:43:2
  (if
   ;;@ ~lib/memory.ts:43:6
   (i32.ge_u
    (get_local $2)
    ;;@ ~lib/memory.ts:43:11
    (i32.const 32)
   )
   ;;@ ~lib/memory.ts:43:15
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        ;;@ ~lib/memory.ts:44:12
        (i32.and
         (get_local $0)
         ;;@ ~lib/memory.ts:44:19
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/memory.ts:46:11
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/memory.ts:65:11
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/memory.ts:83:11
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      ;;@ ~lib/memory.ts:46:14
      (block
       ;;@ ~lib/memory.ts:47:8
       (set_local $3
        ;;@ ~lib/memory.ts:47:12
        (i32.load
         ;;@ ~lib/memory.ts:47:22
         (get_local $1)
        )
       )
       ;;@ ~lib/memory.ts:48:8
       (i32.store8
        ;;@ ~lib/memory.ts:48:18
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:48:26
        (i32.load8_u
         ;;@ ~lib/memory.ts:48:35
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:49:8
       (i32.store8
        ;;@ ~lib/memory.ts:49:18
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:49:26
        (i32.load8_u
         ;;@ ~lib/memory.ts:49:35
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:50:8
       (i32.store8
        ;;@ ~lib/memory.ts:50:18
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:50:26
        (i32.load8_u
         ;;@ ~lib/memory.ts:50:35
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:51:8
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/memory.ts:51:13
         (i32.const 3)
        )
       )
       ;;@ ~lib/memory.ts:52:8
       (block $break|3
        (loop $continue|3
         (if
          ;;@ ~lib/memory.ts:52:15
          (i32.ge_u
           (get_local $2)
           ;;@ ~lib/memory.ts:52:20
           (i32.const 17)
          )
          (block
           (block
            ;;@ ~lib/memory.ts:53:10
            (set_local $4
             ;;@ ~lib/memory.ts:53:14
             (i32.load
              ;;@ ~lib/memory.ts:53:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:53:30
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/memory.ts:54:10
            (i32.store
             ;;@ ~lib/memory.ts:54:21
             (get_local $0)
             ;;@ ~lib/memory.ts:54:27
             (i32.or
              (i32.shr_u
               (get_local $3)
               ;;@ ~lib/memory.ts:54:32
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:54:37
              (i32.shl
               (get_local $4)
               ;;@ ~lib/memory.ts:54:42
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:55:10
            (set_local $3
             ;;@ ~lib/memory.ts:55:14
             (i32.load
              ;;@ ~lib/memory.ts:55:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:55:30
               (i32.const 5)
              )
             )
            )
            ;;@ ~lib/memory.ts:56:10
            (i32.store
             ;;@ ~lib/memory.ts:56:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/memory.ts:56:28
              (i32.const 4)
             )
             ;;@ ~lib/memory.ts:56:31
             (i32.or
              (i32.shr_u
               (get_local $4)
               ;;@ ~lib/memory.ts:56:36
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:56:41
              (i32.shl
               (get_local $3)
               ;;@ ~lib/memory.ts:56:46
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:57:10
            (set_local $4
             ;;@ ~lib/memory.ts:57:14
             (i32.load
              ;;@ ~lib/memory.ts:57:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:57:30
               (i32.const 9)
              )
             )
            )
            ;;@ ~lib/memory.ts:58:10
            (i32.store
             ;;@ ~lib/memory.ts:58:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/memory.ts:58:28
              (i32.const 8)
             )
             ;;@ ~lib/memory.ts:58:31
             (i32.or
              (i32.shr_u
               (get_local $3)
               ;;@ ~lib/memory.ts:58:36
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:58:41
              (i32.shl
               (get_local $4)
               ;;@ ~lib/memory.ts:58:46
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:59:10
            (set_local $3
             ;;@ ~lib/memory.ts:59:14
             (i32.load
              ;;@ ~lib/memory.ts:59:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:59:30
               (i32.const 13)
              )
             )
            )
            ;;@ ~lib/memory.ts:60:10
            (i32.store
             ;;@ ~lib/memory.ts:60:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/memory.ts:60:28
              (i32.const 12)
             )
             ;;@ ~lib/memory.ts:60:32
             (i32.or
              (i32.shr_u
               (get_local $4)
               ;;@ ~lib/memory.ts:60:37
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:60:42
              (i32.shl
               (get_local $3)
               ;;@ ~lib/memory.ts:60:47
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:61:10
            (set_local $1
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:61:17
              (i32.const 16)
             )
            )
            ;;@ ~lib/memory.ts:61:21
            (set_local $0
             (i32.add
              (get_local $0)
              ;;@ ~lib/memory.ts:61:29
              (i32.const 16)
             )
            )
            ;;@ ~lib/memory.ts:61:33
            (set_local $2
             (i32.sub
              (get_local $2)
              ;;@ ~lib/memory.ts:61:38
              (i32.const 16)
             )
            )
           )
           (br $continue|3)
          )
         )
        )
       )
       ;;@ ~lib/memory.ts:63:8
       (br $break|2)
      )
     )
     ;;@ ~lib/memory.ts:65:14
     (block
      ;;@ ~lib/memory.ts:66:8
      (set_local $3
       ;;@ ~lib/memory.ts:66:12
       (i32.load
        ;;@ ~lib/memory.ts:66:22
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:67:8
      (i32.store8
       ;;@ ~lib/memory.ts:67:18
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:67:26
       (i32.load8_u
        ;;@ ~lib/memory.ts:67:35
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      ;;@ ~lib/memory.ts:68:8
      (i32.store8
       ;;@ ~lib/memory.ts:68:18
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:68:26
       (i32.load8_u
        ;;@ ~lib/memory.ts:68:35
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      ;;@ ~lib/memory.ts:69:8
      (set_local $2
       (i32.sub
        (get_local $2)
        ;;@ ~lib/memory.ts:69:13
        (i32.const 2)
       )
      )
      ;;@ ~lib/memory.ts:70:8
      (block $break|4
       (loop $continue|4
        (if
         ;;@ ~lib/memory.ts:70:15
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/memory.ts:70:20
          (i32.const 18)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:71:10
           (set_local $4
            ;;@ ~lib/memory.ts:71:14
            (i32.load
             ;;@ ~lib/memory.ts:71:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:71:30
              (i32.const 2)
             )
            )
           )
           ;;@ ~lib/memory.ts:72:10
           (i32.store
            ;;@ ~lib/memory.ts:72:21
            (get_local $0)
            ;;@ ~lib/memory.ts:72:27
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ ~lib/memory.ts:72:32
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:72:37
             (i32.shl
              (get_local $4)
              ;;@ ~lib/memory.ts:72:42
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:73:10
           (set_local $3
            ;;@ ~lib/memory.ts:73:14
            (i32.load
             ;;@ ~lib/memory.ts:73:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:73:30
              (i32.const 6)
             )
            )
           )
           ;;@ ~lib/memory.ts:74:10
           (i32.store
            ;;@ ~lib/memory.ts:74:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:74:28
             (i32.const 4)
            )
            ;;@ ~lib/memory.ts:74:31
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ ~lib/memory.ts:74:36
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:74:41
             (i32.shl
              (get_local $3)
              ;;@ ~lib/memory.ts:74:46
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:75:10
           (set_local $4
            ;;@ ~lib/memory.ts:75:14
            (i32.load
             ;;@ ~lib/memory.ts:75:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:75:30
              (i32.const 10)
             )
            )
           )
           ;;@ ~lib/memory.ts:76:10
           (i32.store
            ;;@ ~lib/memory.ts:76:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:76:28
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:76:31
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ ~lib/memory.ts:76:36
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:76:41
             (i32.shl
              (get_local $4)
              ;;@ ~lib/memory.ts:76:46
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:77:10
           (set_local $3
            ;;@ ~lib/memory.ts:77:14
            (i32.load
             ;;@ ~lib/memory.ts:77:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:77:30
              (i32.const 14)
             )
            )
           )
           ;;@ ~lib/memory.ts:78:10
           (i32.store
            ;;@ ~lib/memory.ts:78:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:78:28
             (i32.const 12)
            )
            ;;@ ~lib/memory.ts:78:32
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ ~lib/memory.ts:78:37
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:78:42
             (i32.shl
              (get_local $3)
              ;;@ ~lib/memory.ts:78:47
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:79:10
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:79:17
             (i32.const 16)
            )
           )
           ;;@ ~lib/memory.ts:79:21
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:79:29
             (i32.const 16)
            )
           )
           ;;@ ~lib/memory.ts:79:33
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:79:38
             (i32.const 16)
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
      ;;@ ~lib/memory.ts:81:8
      (br $break|2)
     )
    )
    ;;@ ~lib/memory.ts:83:14
    (block
     ;;@ ~lib/memory.ts:84:8
     (set_local $3
      ;;@ ~lib/memory.ts:84:12
      (i32.load
       ;;@ ~lib/memory.ts:84:22
       (get_local $1)
      )
     )
     ;;@ ~lib/memory.ts:85:8
     (i32.store8
      ;;@ ~lib/memory.ts:85:18
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      ;;@ ~lib/memory.ts:85:26
      (i32.load8_u
       ;;@ ~lib/memory.ts:85:35
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
     ;;@ ~lib/memory.ts:86:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/memory.ts:86:13
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:87:8
     (block $break|5
      (loop $continue|5
       (if
        ;;@ ~lib/memory.ts:87:15
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:87:20
         (i32.const 19)
        )
        (block
         (block
          ;;@ ~lib/memory.ts:88:10
          (set_local $4
           ;;@ ~lib/memory.ts:88:14
           (i32.load
            ;;@ ~lib/memory.ts:88:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:88:30
             (i32.const 3)
            )
           )
          )
          ;;@ ~lib/memory.ts:89:10
          (i32.store
           ;;@ ~lib/memory.ts:89:21
           (get_local $0)
           ;;@ ~lib/memory.ts:89:27
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ ~lib/memory.ts:89:32
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:89:36
            (i32.shl
             (get_local $4)
             ;;@ ~lib/memory.ts:89:41
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:90:10
          (set_local $3
           ;;@ ~lib/memory.ts:90:14
           (i32.load
            ;;@ ~lib/memory.ts:90:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:90:30
             (i32.const 7)
            )
           )
          )
          ;;@ ~lib/memory.ts:91:10
          (i32.store
           ;;@ ~lib/memory.ts:91:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/memory.ts:91:28
            (i32.const 4)
           )
           ;;@ ~lib/memory.ts:91:31
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ ~lib/memory.ts:91:36
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:91:40
            (i32.shl
             (get_local $3)
             ;;@ ~lib/memory.ts:91:45
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:92:10
          (set_local $4
           ;;@ ~lib/memory.ts:92:14
           (i32.load
            ;;@ ~lib/memory.ts:92:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:92:30
             (i32.const 11)
            )
           )
          )
          ;;@ ~lib/memory.ts:93:10
          (i32.store
           ;;@ ~lib/memory.ts:93:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/memory.ts:93:28
            (i32.const 8)
           )
           ;;@ ~lib/memory.ts:93:31
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ ~lib/memory.ts:93:36
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:93:40
            (i32.shl
             (get_local $4)
             ;;@ ~lib/memory.ts:93:45
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:94:10
          (set_local $3
           ;;@ ~lib/memory.ts:94:14
           (i32.load
            ;;@ ~lib/memory.ts:94:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:94:30
             (i32.const 15)
            )
           )
          )
          ;;@ ~lib/memory.ts:95:10
          (i32.store
           ;;@ ~lib/memory.ts:95:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/memory.ts:95:28
            (i32.const 12)
           )
           ;;@ ~lib/memory.ts:95:32
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ ~lib/memory.ts:95:37
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:95:41
            (i32.shl
             (get_local $3)
             ;;@ ~lib/memory.ts:95:46
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:96:10
          (set_local $1
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:96:17
            (i32.const 16)
           )
          )
          ;;@ ~lib/memory.ts:96:21
          (set_local $0
           (i32.add
            (get_local $0)
            ;;@ ~lib/memory.ts:96:29
            (i32.const 16)
           )
          )
          ;;@ ~lib/memory.ts:96:33
          (set_local $2
           (i32.sub
            (get_local $2)
            ;;@ ~lib/memory.ts:96:38
            (i32.const 16)
           )
          )
         )
         (br $continue|5)
        )
       )
      )
     )
     ;;@ ~lib/memory.ts:98:8
     (br $break|2)
    )
   )
  )
  ;;@ ~lib/memory.ts:104:2
  (if
   ;;@ ~lib/memory.ts:104:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:104:10
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:104:14
   (block
    ;;@ ~lib/memory.ts:105:4
    (i32.store8
     ;;@ ~lib/memory.ts:105:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:105:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:105:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:106:4
    (i32.store8
     ;;@ ~lib/memory.ts:106:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:106:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:106:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:107:4
    (i32.store8
     ;;@ ~lib/memory.ts:107:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:107:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:107:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:108:4
    (i32.store8
     ;;@ ~lib/memory.ts:108:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:108:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:108:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:109:4
    (i32.store8
     ;;@ ~lib/memory.ts:109:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:109:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:109:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:110:4
    (i32.store8
     ;;@ ~lib/memory.ts:110:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:110:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:110:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:111:4
    (i32.store8
     ;;@ ~lib/memory.ts:111:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:111:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:111:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:112:4
    (i32.store8
     ;;@ ~lib/memory.ts:112:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:112:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:112:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:113:4
    (i32.store8
     ;;@ ~lib/memory.ts:113:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:113:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:113:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:114:4
    (i32.store8
     ;;@ ~lib/memory.ts:114:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:114:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:114:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:115:4
    (i32.store8
     ;;@ ~lib/memory.ts:115:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:115:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:115:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:116:4
    (i32.store8
     ;;@ ~lib/memory.ts:116:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:116:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:116:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:117:4
    (i32.store8
     ;;@ ~lib/memory.ts:117:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:117:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:117:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:118:4
    (i32.store8
     ;;@ ~lib/memory.ts:118:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:118:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:118:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:119:4
    (i32.store8
     ;;@ ~lib/memory.ts:119:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:119:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:119:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:120:4
    (i32.store8
     ;;@ ~lib/memory.ts:120:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:120:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:120:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:122:2
  (if
   ;;@ ~lib/memory.ts:122:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:122:10
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:122:13
   (block
    ;;@ ~lib/memory.ts:123:4
    (i32.store8
     ;;@ ~lib/memory.ts:123:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:123:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:123:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:124:4
    (i32.store8
     ;;@ ~lib/memory.ts:124:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:124:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:124:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:125:4
    (i32.store8
     ;;@ ~lib/memory.ts:125:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:125:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:125:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:126:4
    (i32.store8
     ;;@ ~lib/memory.ts:126:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:126:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:126:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:127:4
    (i32.store8
     ;;@ ~lib/memory.ts:127:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:127:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:127:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:128:4
    (i32.store8
     ;;@ ~lib/memory.ts:128:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:128:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:128:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:129:4
    (i32.store8
     ;;@ ~lib/memory.ts:129:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:129:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:129:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:130:4
    (i32.store8
     ;;@ ~lib/memory.ts:130:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:130:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:130:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:132:2
  (if
   ;;@ ~lib/memory.ts:132:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:132:10
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:132:13
   (block
    ;;@ ~lib/memory.ts:133:4
    (i32.store8
     ;;@ ~lib/memory.ts:133:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:133:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:133:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:134:4
    (i32.store8
     ;;@ ~lib/memory.ts:134:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:134:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:134:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:135:4
    (i32.store8
     ;;@ ~lib/memory.ts:135:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:135:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:135:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:136:4
    (i32.store8
     ;;@ ~lib/memory.ts:136:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:136:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:136:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:138:2
  (if
   ;;@ ~lib/memory.ts:138:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:138:10
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:138:13
   (block
    ;;@ ~lib/memory.ts:139:4
    (i32.store8
     ;;@ ~lib/memory.ts:139:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:139:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:139:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:140:4
    (i32.store8
     ;;@ ~lib/memory.ts:140:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:140:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:140:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:142:2
  (if
   ;;@ ~lib/memory.ts:142:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:142:10
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:142:13
   (i32.store8
    ;;@ ~lib/memory.ts:143:14
    (block (result i32)
     (set_local $5
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    ;;@ ~lib/memory.ts:143:22
    (i32.load8_u
     ;;@ ~lib/memory.ts:143:31
     (block (result i32)
      (set_local $5
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/memory/move_memory (; 39 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ ~lib/memory.ts:151:2
  (if
   ;;@ ~lib/memory.ts:151:6
   (i32.eq
    (get_local $0)
    ;;@ ~lib/memory.ts:151:14
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:151:19
   (return)
  )
  ;;@ ~lib/memory.ts:152:2
  (if
   ;;@ ~lib/memory.ts:152:6
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       ;;@ ~lib/memory.ts:152:12
       (get_local $2)
      )
      ;;@ ~lib/memory.ts:152:17
      (get_local $0)
     )
    )
    (get_local $3)
    ;;@ ~lib/memory.ts:152:25
    (i32.le_u
     (i32.add
      (get_local $0)
      ;;@ ~lib/memory.ts:152:32
      (get_local $2)
     )
     ;;@ ~lib/memory.ts:152:37
     (get_local $1)
    )
   )
   ;;@ ~lib/memory.ts:152:42
   (block
    ;;@ ~lib/memory.ts:153:4
    (call $~lib/memory/copy_memory
     ;;@ ~lib/memory.ts:153:16
     (get_local $0)
     ;;@ ~lib/memory.ts:153:22
     (get_local $1)
     ;;@ ~lib/memory.ts:153:27
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:154:4
    (return)
   )
  )
  ;;@ ~lib/memory.ts:156:2
  (if
   ;;@ ~lib/memory.ts:156:6
   (i32.lt_u
    (get_local $0)
    ;;@ ~lib/memory.ts:156:13
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:156:18
   (block
    ;;@ ~lib/memory.ts:157:4
    (if
     ;;@ ~lib/memory.ts:157:8
     (i32.eq
      (i32.and
       ;;@ ~lib/memory.ts:157:9
       (get_local $1)
       ;;@ ~lib/memory.ts:157:15
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:157:21
      (i32.and
       ;;@ ~lib/memory.ts:157:22
       (get_local $0)
       ;;@ ~lib/memory.ts:157:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:157:33
     (block
      (block $break|0
       (loop $continue|0
        (if
         ;;@ ~lib/memory.ts:158:13
         (i32.and
          (get_local $0)
          ;;@ ~lib/memory.ts:158:20
          (i32.const 7)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:159:8
           (if
            ;;@ ~lib/memory.ts:159:12
            (i32.eqz
             ;;@ ~lib/memory.ts:159:13
             (get_local $2)
            )
            ;;@ ~lib/memory.ts:159:16
            (return)
           )
           ;;@ ~lib/memory.ts:160:8
           (set_local $2
            (i32.sub
             ;;@ ~lib/memory.ts:160:10
             (get_local $2)
             (i32.const 1)
            )
           )
           ;;@ ~lib/memory.ts:161:8
           (i32.store8
            ;;@ ~lib/memory.ts:161:18
            (block (result i32)
             (set_local $3
              (get_local $0)
             )
             (set_local $0
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
             (get_local $3)
            )
            ;;@ ~lib/memory.ts:161:26
            (i32.load8_u
             ;;@ ~lib/memory.ts:161:35
             (block (result i32)
              (set_local $3
               (get_local $1)
              )
              (set_local $1
               (i32.add
                (get_local $3)
                (i32.const 1)
               )
              )
              (get_local $3)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      ;;@ ~lib/memory.ts:163:6
      (block $break|1
       (loop $continue|1
        (if
         ;;@ ~lib/memory.ts:163:13
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/memory.ts:163:18
          (i32.const 8)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:164:8
           (i64.store
            ;;@ ~lib/memory.ts:164:19
            (get_local $0)
            ;;@ ~lib/memory.ts:164:25
            (i64.load
             ;;@ ~lib/memory.ts:164:35
             (get_local $1)
            )
           )
           ;;@ ~lib/memory.ts:165:8
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:165:16
             (i32.const 8)
            )
           )
           ;;@ ~lib/memory.ts:166:8
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:166:16
             (i32.const 8)
            )
           )
           ;;@ ~lib/memory.ts:167:8
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:167:16
             (i32.const 8)
            )
           )
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:170:4
    (block $break|2
     (loop $continue|2
      (if
       ;;@ ~lib/memory.ts:170:11
       (get_local $2)
       (block
        (block
         ;;@ ~lib/memory.ts:171:6
         (i32.store8
          ;;@ ~lib/memory.ts:171:16
          (block (result i32)
           (set_local $3
            (get_local $0)
           )
           (set_local $0
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
           (get_local $3)
          )
          ;;@ ~lib/memory.ts:171:24
          (i32.load8_u
           ;;@ ~lib/memory.ts:171:33
           (block (result i32)
            (set_local $3
             (get_local $1)
            )
            (set_local $1
             (i32.add
              (get_local $3)
              (i32.const 1)
             )
            )
            (get_local $3)
           )
          )
         )
         ;;@ ~lib/memory.ts:172:6
         (set_local $2
          (i32.sub
           ;;@ ~lib/memory.ts:172:8
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $continue|2)
       )
      )
     )
    )
   )
   ;;@ ~lib/memory.ts:174:9
   (block
    ;;@ ~lib/memory.ts:175:4
    (if
     ;;@ ~lib/memory.ts:175:8
     (i32.eq
      (i32.and
       ;;@ ~lib/memory.ts:175:9
       (get_local $1)
       ;;@ ~lib/memory.ts:175:15
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:175:21
      (i32.and
       ;;@ ~lib/memory.ts:175:22
       (get_local $0)
       ;;@ ~lib/memory.ts:175:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:175:33
     (block
      (block $break|3
       (loop $continue|3
        (if
         ;;@ ~lib/memory.ts:176:13
         (i32.and
          (i32.add
           ;;@ ~lib/memory.ts:176:14
           (get_local $0)
           ;;@ ~lib/memory.ts:176:21
           (get_local $2)
          )
          ;;@ ~lib/memory.ts:176:26
          (i32.const 7)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:177:8
           (if
            ;;@ ~lib/memory.ts:177:12
            (i32.eqz
             ;;@ ~lib/memory.ts:177:13
             (get_local $2)
            )
            ;;@ ~lib/memory.ts:177:16
            (return)
           )
           ;;@ ~lib/memory.ts:178:8
           (i32.store8
            ;;@ ~lib/memory.ts:178:18
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:178:25
             (tee_local $2
              (i32.sub
               ;;@ ~lib/memory.ts:178:27
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/memory.ts:178:30
            (i32.load8_u
             ;;@ ~lib/memory.ts:178:39
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:178:45
              (get_local $2)
             )
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      ;;@ ~lib/memory.ts:180:6
      (block $break|4
       (loop $continue|4
        (if
         ;;@ ~lib/memory.ts:180:13
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/memory.ts:180:18
          (i32.const 8)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:181:8
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:181:13
             (i32.const 8)
            )
           )
           ;;@ ~lib/memory.ts:182:8
           (i64.store
            ;;@ ~lib/memory.ts:182:19
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:182:26
             (get_local $2)
            )
            ;;@ ~lib/memory.ts:182:29
            (i64.load
             ;;@ ~lib/memory.ts:182:39
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:182:45
              (get_local $2)
             )
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:185:4
    (block $break|5
     (loop $continue|5
      (if
       ;;@ ~lib/memory.ts:185:11
       (get_local $2)
       (block
        ;;@ ~lib/memory.ts:185:14
        (i32.store8
         ;;@ ~lib/memory.ts:186:16
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:186:23
          (tee_local $2
           (i32.sub
            ;;@ ~lib/memory.ts:186:25
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         ;;@ ~lib/memory.ts:186:28
         (i32.load8_u
          ;;@ ~lib/memory.ts:186:37
          (i32.add
           (get_local $1)
           ;;@ ~lib/memory.ts:186:43
           (get_local $2)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
   )
  )
 )
 (func $contracts/datastream/DataStream#writeString (; 40 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ contracts/datastream.ts:76:4
  (set_local $2
   ;;@ contracts/datastream.ts:76:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ contracts/datastream.ts:77:9
  (call $contracts/datastream/DataStream#writeVarint32
   ;;@ contracts/datastream.ts:77:4
   (get_local $0)
   ;;@ contracts/datastream.ts:77:23
   (get_local $2)
  )
  ;;@ contracts/datastream.ts:78:4
  (if
   ;;@ contracts/datastream.ts:78:7
   (i32.eq
    (get_local $2)
    ;;@ contracts/datastream.ts:78:14
    (i32.const 0)
   )
   ;;@ contracts/datastream.ts:78:17
   (return)
  )
  ;;@ contracts/datastream.ts:80:4
  (set_local $3
   ;;@ contracts/datastream.ts:80:18
   (call $~lib/string/String#toUTF8
    ;;@ contracts/datastream.ts:80:14
    (get_local $1)
   )
  )
  ;;@ contracts/datastream.ts:81:8
  (set_local $2
   ;;@ contracts/datastream.ts:81:14
   (call $~lib/string/String#get:lengthUTF8
    (get_local $1)
   )
  )
  ;;@ contracts/datastream.ts:83:4
  (call $~lib/memory/move_memory
   ;;@ contracts/datastream.ts:83:16
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ contracts/datastream.ts:83:30
    (i32.load
     (get_local $0)
    )
   )
   ;;@ contracts/datastream.ts:83:40
   (get_local $3)
   ;;@ contracts/datastream.ts:83:52
   (i32.sub
    (get_local $2)
    ;;@ contracts/datastream.ts:83:58
    (i32.const 1)
   )
  )
  ;;@ contracts/datastream.ts:84:4
  (i32.store
   (get_local $0)
   (i32.add
    (i32.load
     (get_local $0)
    )
    ;;@ contracts/datastream.ts:84:16
    (i32.sub
     (get_local $2)
     ;;@ contracts/datastream.ts:84:22
     (i32.const 1)
    )
   )
  )
 )
 (func $contracts/todolist/todo/Todo#to_ds (; 41 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ contracts/todolist/todo.ts:24:8
  (set_local $1
   ;;@ contracts/todolist/todo.ts:24:18
   (call $~lib/internal/typedarray/TypedArray<u8,u32>#constructor
    (i32.const 0)
    ;;@ contracts/todolist/todo.ts:24:33
    (i32.load
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:25:8
  (set_local $2
   ;;@ contracts/todolist/todo.ts:25:17
   (call $contracts/datastream/DataStream#constructor
    (i32.const 0)
    ;;@ contracts/todolist/todo.ts:25:32
    (i32.load
     ;;@ contracts/todolist/todo.ts:25:50
     (get_local $1)
    )
    ;;@ contracts/todolist/todo.ts:25:63
    (i32.load
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:26:11
  (call $contracts/datastream/DataStream#store<u64>
   ;;@ contracts/todolist/todo.ts:26:8
   (get_local $2)
   ;;@ contracts/todolist/todo.ts:26:22
   (i64.load
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:27:11
  (call $contracts/datastream/DataStream#store<u64>
   ;;@ contracts/todolist/todo.ts:27:8
   (get_local $2)
   ;;@ contracts/todolist/todo.ts:27:22
   (i64.load offset=16
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:28:11
  (call $contracts/datastream/DataStream#store<u64>
   ;;@ contracts/todolist/todo.ts:28:8
   (get_local $2)
   ;;@ contracts/todolist/todo.ts:28:22
   (i64.load offset=24
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:29:11
  (call $contracts/datastream/DataStream#store<bool>
   ;;@ contracts/todolist/todo.ts:29:8
   (get_local $2)
   ;;@ contracts/todolist/todo.ts:29:23
   (i32.load8_u offset=12
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:30:11
  (call $contracts/datastream/DataStream#writeString
   ;;@ contracts/todolist/todo.ts:30:8
   (get_local $2)
   ;;@ contracts/todolist/todo.ts:30:23
   (i32.load offset=8
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:31:15
  (get_local $2)
 )
 (func $contracts/todolist/todo/TodoContract#add (; 42 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  ;;@ contracts/todolist/todo.ts:65:8
  (block $contracts/utils/assert|inlined.0
   (set_local $3
    ;;@ contracts/todolist/todo.ts:65:15
    (i32.gt_s
     (i32.load
      (get_local $1)
     )
     ;;@ contracts/todolist/todo.ts:65:29
     (i32.const 0)
    )
   )
   (set_local $4
    ;;@ contracts/todolist/todo.ts:65:32
    (i32.const 104)
   )
   ;;@ contracts/utils.ts:14:2
   (if
    ;;@ contracts/utils.ts:14:5
    (i32.eqz
     ;;@ contracts/utils.ts:14:6
     (get_local $3)
    )
    ;;@ contracts/utils.ts:14:21
    (call $contracts/eoslib/eosio_assert
     ;;@ contracts/utils.ts:14:34
     (i32.const 0)
     ;;@ contracts/utils.ts:14:37
     (if (result i32)
      (get_local $4)
      ;;@ contracts/utils.ts:14:47
      (call $~lib/string/String#toUTF8
       ;;@ contracts/utils.ts:14:43
       (get_local $4)
      )
      ;;@ contracts/utils.ts:14:58
      (i32.const 0)
     )
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:66:12
  (call $contracts/eoslib/require_auth
   ;;@ contracts/todolist/todo.ts:66:25
   (get_local $2)
  )
  ;;@ contracts/todolist/todo.ts:67:8
  (set_local $5
   ;;@ contracts/todolist/todo.ts:67:24
   (i64.const 0)
  )
  ;;@ contracts/todolist/todo.ts:68:8
  (set_local $4
   ;;@ contracts/todolist/todo.ts:68:28
   (call $contracts/eoslib/db_end_i64
    ;;@ contracts/todolist/todo.ts:68:39
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:68:50
    (i64.load offset=24
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:68:62
    (i64.load offset=32
     (get_local $0)
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:69:8
  (set_local $3
   ;;@ contracts/todolist/todo.ts:69:33
   (call $contracts/eoslib/db_lowerbound_i64
    ;;@ contracts/todolist/todo.ts:69:51
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:69:62
    (i64.load offset=24
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:69:74
    (i64.load offset=32
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:69:86
    (i64.const 0)
   )
  )
  ;;@ contracts/todolist/todo.ts:70:8
  (if
   ;;@ contracts/todolist/todo.ts:70:12
   (i32.ne
    (get_local $3)
    ;;@ contracts/todolist/todo.ts:70:24
    (get_local $4)
   )
   ;;@ contracts/todolist/todo.ts:70:29
   (block
    ;;@ contracts/todolist/todo.ts:71:12
    (set_local $3
     ;;@ contracts/todolist/todo.ts:71:27
     (call $contracts/eoslib/db_previous_i64
      ;;@ contracts/todolist/todo.ts:71:43
      (get_local $4)
      ;;@ contracts/todolist/todo.ts:71:48
      (i32.const 40)
     )
    )
    ;;@ contracts/todolist/todo.ts:72:12
    (set_local $6
     ;;@ contracts/todolist/todo.ts:72:26
     (call $contracts/eoslib/db_get_i64
      ;;@ contracts/todolist/todo.ts:72:37
      (get_local $3)
      ;;@ contracts/todolist/todo.ts:72:47
      (i32.const 0)
      ;;@ contracts/todolist/todo.ts:72:50
      (i32.const 0)
     )
    )
    ;;@ contracts/todolist/todo.ts:73:12
    (set_local $7
     ;;@ contracts/todolist/todo.ts:73:22
     (call $~lib/internal/typedarray/TypedArray<u8,u32>#constructor
      (i32.const 0)
      ;;@ contracts/todolist/todo.ts:73:37
      (get_local $6)
     )
    )
    ;;@ contracts/todolist/todo.ts:74:16
    (drop
     (call $contracts/eoslib/db_get_i64
      ;;@ contracts/todolist/todo.ts:74:27
      (get_local $3)
      ;;@ contracts/todolist/todo.ts:74:37
      (i32.load
       ;;@ contracts/todolist/todo.ts:74:55
       (get_local $7)
      )
      ;;@ contracts/todolist/todo.ts:74:68
      (get_local $6)
     )
    )
    ;;@ contracts/todolist/todo.ts:75:12
    (set_local $8
     ;;@ contracts/todolist/todo.ts:75:21
     (call $contracts/datastream/DataStream#constructor
      (i32.const 0)
      ;;@ contracts/todolist/todo.ts:75:36
      (i32.load
       ;;@ contracts/todolist/todo.ts:75:54
       (get_local $7)
      )
      ;;@ contracts/todolist/todo.ts:75:67
      (get_local $6)
     )
    )
    ;;@ contracts/todolist/todo.ts:76:12
    (set_local $9
     ;;@ contracts/todolist/todo.ts:76:28
     (block (result i32)
      (set_local $9
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 36)
       )
      )
      (i64.store
       (get_local $9)
       (i64.const 0)
      )
      (i32.store offset=8
       (get_local $9)
       (i32.const 0)
      )
      (i32.store8 offset=12
       (get_local $9)
       (i32.const 0)
      )
      (i64.store offset=16
       (get_local $9)
       (i64.const 0)
      )
      (i64.store offset=24
       (get_local $9)
       (i64.const 0)
      )
      (i32.store offset=32
       (get_local $9)
       (i32.const 0)
      )
      (get_local $9)
     )
    )
    ;;@ contracts/todolist/todo.ts:77:22
    (call $contracts/todolist/todo/Todo#from_ds
     ;;@ contracts/todolist/todo.ts:77:12
     (get_local $9)
     ;;@ contracts/todolist/todo.ts:77:30
     (get_local $8)
    )
    ;;@ contracts/todolist/todo.ts:78:12
    (set_local $5
     ;;@ contracts/todolist/todo.ts:78:18
     (i64.add
      (i64.load
       (get_local $9)
      )
      ;;@ contracts/todolist/todo.ts:78:38
      (i64.const 1)
     )
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:81:8
  (set_local $9
   ;;@ contracts/todolist/todo.ts:81:19
   (block (result i32)
    (set_local $9
     (call $~lib/allocator/arena/allocate_memory
      (i32.const 36)
     )
    )
    (i64.store
     (get_local $9)
     (i64.const 0)
    )
    (i32.store offset=8
     (get_local $9)
     (i32.const 0)
    )
    (i32.store8 offset=12
     (get_local $9)
     (i32.const 0)
    )
    (i64.store offset=16
     (get_local $9)
     (i64.const 0)
    )
    (i64.store offset=24
     (get_local $9)
     (i64.const 0)
    )
    (i32.store offset=32
     (get_local $9)
     (i32.const 0)
    )
    (get_local $9)
   )
  )
  ;;@ contracts/todolist/todo.ts:82:8
  (i64.store
   (get_local $9)
   ;;@ contracts/todolist/todo.ts:82:23
   (get_local $5)
  )
  ;;@ contracts/todolist/todo.ts:83:8
  (i64.store offset=24
   (get_local $9)
   ;;@ contracts/todolist/todo.ts:83:24
   (i64.load offset=8
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:84:8
  (i64.store offset=16
   (get_local $9)
   ;;@ contracts/todolist/todo.ts:84:23
   (get_local $2)
  )
  ;;@ contracts/todolist/todo.ts:85:8
  (i32.store8 offset=12
   (get_local $9)
   ;;@ contracts/todolist/todo.ts:85:25
   (i32.const 0)
  )
  ;;@ contracts/todolist/todo.ts:86:8
  (i32.store offset=8
   (get_local $9)
   ;;@ contracts/todolist/todo.ts:86:20
   (get_local $1)
  )
  ;;@ contracts/todolist/todo.ts:87:8
  (set_local $8
   ;;@ contracts/todolist/todo.ts:87:30
   (call $contracts/todolist/todo/Todo#to_ds
    ;;@ contracts/todolist/todo.ts:87:25
    (get_local $9)
   )
  )
  ;;@ contracts/todolist/todo.ts:88:8
  (set_local $3
   ;;@ contracts/todolist/todo.ts:88:23
   (call $contracts/eoslib/db_store_i64
    ;;@ contracts/todolist/todo.ts:88:36
    (i64.load offset=24
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:88:48
    (i64.load offset=32
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:88:60
    (get_local $2)
    ;;@ contracts/todolist/todo.ts:88:69
    (i64.load
     (get_local $9)
    )
    ;;@ contracts/todolist/todo.ts:88:83
    (i32.load offset=4
     (get_local $8)
    )
    ;;@ contracts/todolist/todo.ts:88:102
    (i32.load
     (get_local $8)
    )
   )
  )
 )
 (func $contracts/todolist/todo/TodoContract#getTodoByKey (; 43 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ contracts/todolist/todo.ts:129:8
  (set_local $2
   ;;@ contracts/todolist/todo.ts:129:27
   (call $contracts/eoslib/db_find_i64
    ;;@ contracts/todolist/todo.ts:129:39
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:129:50
    (i64.load offset=24
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:129:62
    (i64.load offset=32
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:129:74
    (get_local $1)
   )
  )
  ;;@ contracts/todolist/todo.ts:130:8
  (set_local $3
   ;;@ contracts/todolist/todo.ts:130:22
   (call $contracts/eoslib/db_get_i64
    ;;@ contracts/todolist/todo.ts:130:33
    (get_local $2)
    ;;@ contracts/todolist/todo.ts:130:43
    (i32.const 0)
    ;;@ contracts/todolist/todo.ts:130:46
    (i32.const 0)
   )
  )
  ;;@ contracts/todolist/todo.ts:131:8
  (block $contracts/utils/assert|inlined.1
   (set_local $4
    ;;@ contracts/todolist/todo.ts:131:15
    (i32.ge_s
     (get_local $3)
     ;;@ contracts/todolist/todo.ts:131:22
     (i32.const 0)
    )
   )
   (set_local $5
    ;;@ contracts/todolist/todo.ts:131:25
    (i32.const 148)
   )
   ;;@ contracts/utils.ts:14:2
   (if
    ;;@ contracts/utils.ts:14:5
    (i32.eqz
     ;;@ contracts/utils.ts:14:6
     (get_local $4)
    )
    ;;@ contracts/utils.ts:14:21
    (call $contracts/eoslib/eosio_assert
     ;;@ contracts/utils.ts:14:34
     (i32.const 0)
     ;;@ contracts/utils.ts:14:37
     (if (result i32)
      (get_local $5)
      ;;@ contracts/utils.ts:14:47
      (call $~lib/string/String#toUTF8
       ;;@ contracts/utils.ts:14:43
       (get_local $5)
      )
      ;;@ contracts/utils.ts:14:58
      (i32.const 0)
     )
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:132:8
  (set_local $5
   ;;@ contracts/todolist/todo.ts:132:18
   (call $~lib/internal/typedarray/TypedArray<u8,u32>#constructor
    (i32.const 0)
    ;;@ contracts/todolist/todo.ts:132:33
    (get_local $3)
   )
  )
  ;;@ contracts/todolist/todo.ts:133:12
  (drop
   (call $contracts/eoslib/db_get_i64
    ;;@ contracts/todolist/todo.ts:133:23
    (get_local $2)
    ;;@ contracts/todolist/todo.ts:133:33
    (i32.load
     ;;@ contracts/todolist/todo.ts:133:51
     (get_local $5)
    )
    ;;@ contracts/todolist/todo.ts:133:64
    (get_local $3)
   )
  )
  ;;@ contracts/todolist/todo.ts:135:8
  (set_local $4
   ;;@ contracts/todolist/todo.ts:135:21
   (call $contracts/datastream/DataStream#constructor
    (i32.const 0)
    ;;@ contracts/todolist/todo.ts:135:36
    (i32.load
     ;;@ contracts/todolist/todo.ts:135:54
     (get_local $5)
    )
    ;;@ contracts/todolist/todo.ts:135:67
    (get_local $3)
   )
  )
  ;;@ contracts/todolist/todo.ts:136:8
  (set_local $6
   ;;@ contracts/todolist/todo.ts:136:19
   (block (result i32)
    (set_local $6
     (call $~lib/allocator/arena/allocate_memory
      (i32.const 36)
     )
    )
    (i64.store
     (get_local $6)
     (i64.const 0)
    )
    (i32.store offset=8
     (get_local $6)
     (i32.const 0)
    )
    (i32.store8 offset=12
     (get_local $6)
     (i32.const 0)
    )
    (i64.store offset=16
     (get_local $6)
     (i64.const 0)
    )
    (i64.store offset=24
     (get_local $6)
     (i64.const 0)
    )
    (i32.store offset=32
     (get_local $6)
     (i32.const 0)
    )
    (get_local $6)
   )
  )
  ;;@ contracts/todolist/todo.ts:137:8
  (i32.store offset=32
   (get_local $6)
   ;;@ contracts/todolist/todo.ts:137:24
   (get_local $2)
  )
  ;;@ contracts/todolist/todo.ts:138:13
  (call $contracts/todolist/todo/Todo#from_ds
   ;;@ contracts/todolist/todo.ts:138:8
   (get_local $6)
   ;;@ contracts/todolist/todo.ts:138:21
   (get_local $4)
  )
  ;;@ contracts/todolist/todo.ts:139:15
  (get_local $6)
 )
 (func $contracts/utils/Name#constructor (; 44 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/internal/string/allocate (; 45 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ ~lib/internal/string.ts:21:2
  (set_local $2
   ;;@ ~lib/internal/string.ts:21:15
   (call $~lib/allocator/arena/allocate_memory
    ;;@ ~lib/internal/string.ts:21:31
    (i32.add
     (i32.const 4)
     ;;@ ~lib/internal/string.ts:21:45
     (i32.shl
      ;;@ ~lib/internal/string.ts:21:46
      (get_local $0)
      ;;@ ~lib/internal/string.ts:21:63
      (i32.const 1)
     )
    )
   )
  )
  ;;@ ~lib/internal/string.ts:22:2
  (i32.store
   ;;@ ~lib/internal/string.ts:22:13
   (get_local $2)
   ;;@ ~lib/internal/string.ts:22:21
   (get_local $0)
  )
  ;;@ ~lib/internal/string.ts:23:34
  (get_local $2)
 )
 (func $~lib/string/String#concat (; 46 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/string.ts:75:4
  (if
   ;;@ ~lib/string.ts:75:8
   (i32.eq
    (get_local $1)
    ;;@ ~lib/string.ts:75:18
    (i32.const 0)
   )
   ;;@ ~lib/string.ts:75:24
   (set_local $1
    ;;@ ~lib/string.ts:75:32
    (i32.const 188)
   )
  )
  ;;@ ~lib/string.ts:76:4
  (set_local $2
   ;;@ ~lib/string.ts:76:25
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/string.ts:77:4
  (set_local $3
   ;;@ ~lib/string.ts:77:26
   (i32.load
    (get_local $1)
   )
  )
  ;;@ ~lib/string.ts:78:4
  (set_local $4
   ;;@ ~lib/string.ts:78:24
   (i32.add
    (get_local $2)
    ;;@ ~lib/string.ts:78:34
    (get_local $3)
   )
  )
  ;;@ ~lib/string.ts:79:4
  (if
   ;;@ ~lib/string.ts:79:8
   (i32.eq
    (get_local $4)
    ;;@ ~lib/string.ts:79:18
    (i32.const 0)
   )
   ;;@ ~lib/string.ts:79:28
   (return
    (i32.const 8)
   )
  )
  ;;@ ~lib/string.ts:80:4
  (set_local $5
   ;;@ ~lib/string.ts:80:14
   (call $~lib/internal/string/allocate
    ;;@ ~lib/string.ts:80:23
    (get_local $4)
   )
  )
  ;;@ ~lib/string.ts:82:4
  (call $~lib/memory/move_memory
   ;;@ ~lib/string.ts:83:6
   (i32.add
    (get_local $5)
    ;;@ ~lib/string.ts:83:31
    (i32.const 4)
   )
   ;;@ ~lib/string.ts:84:6
   (i32.add
    (get_local $0)
    ;;@ ~lib/string.ts:84:32
    (i32.const 4)
   )
   ;;@ ~lib/string.ts:85:6
   (i32.shl
    (get_local $2)
    ;;@ ~lib/string.ts:85:17
    (i32.const 1)
   )
  )
  ;;@ ~lib/string.ts:88:4
  (call $~lib/memory/move_memory
   ;;@ ~lib/string.ts:89:6
   (i32.add
    (i32.add
     (get_local $5)
     ;;@ ~lib/string.ts:89:31
     (i32.const 4)
    )
    ;;@ ~lib/string.ts:89:45
    (i32.shl
     ;;@ ~lib/string.ts:89:46
     (get_local $2)
     ;;@ ~lib/string.ts:89:57
     (i32.const 1)
    )
   )
   ;;@ ~lib/string.ts:90:6
   (i32.add
    (get_local $1)
    ;;@ ~lib/string.ts:90:33
    (i32.const 4)
   )
   ;;@ ~lib/string.ts:91:6
   (i32.shl
    (get_local $3)
    ;;@ ~lib/string.ts:91:18
    (i32.const 1)
   )
  )
  ;;@ ~lib/string.ts:94:11
  (get_local $5)
 )
 (func $contracts/utils/Name#to_string (; 47 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ contracts/utils.ts:43:4
  (set_local $1
   ;;@ contracts/utils.ts:43:12
   (call $node_modules/assemblyscript/std/assembly/internal/string/allocate
    ;;@ contracts/utils.ts:43:21
    (i32.const 13)
   )
  )
  ;;@ contracts/utils.ts:44:4
  (set_local $2
   ;;@ contracts/utils.ts:44:14
   (i64.load
    (get_local $0)
   )
  )
  ;;@ contracts/utils.ts:45:4
  (set_local $3
   ;;@ contracts/utils.ts:45:16
   (i32.const 0)
  )
  ;;@ contracts/utils.ts:46:4
  (block $break|0
   ;;@ contracts/utils.ts:46:9
   (set_local $4
    ;;@ contracts/utils.ts:46:17
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ contracts/utils.ts:46:20
      (i32.lt_s
       (get_local $4)
       ;;@ contracts/utils.ts:46:24
       (i32.const 13)
      )
     )
    )
    ;;@ contracts/utils.ts:46:33
    (block
     ;;@ contracts/utils.ts:48:6
     (set_local $5
      ;;@ contracts/utils.ts:48:18
      (i32.wrap/i64
       ;;@ contracts/utils.ts:48:24
       (i64.and
        (get_local $2)
        ;;@ contracts/utils.ts:48:30
        (i64.or
         ;;@ contracts/utils.ts:48:31
         (i64.shl
          ;;@ contracts/utils.ts:48:32
          (i64.extend_u/i32
           ;;@ contracts/utils.ts:48:38
           (i32.eq
            (get_local $4)
            ;;@ contracts/utils.ts:48:43
            (i32.const 0)
           )
          )
          ;;@ contracts/utils.ts:48:49
          (i64.const 4)
         )
         ;;@ contracts/utils.ts:48:54
         (i64.const 15)
        )
       )
      )
     )
     ;;@ contracts/utils.ts:49:6
     (if
      ;;@ contracts/utils.ts:49:10
      (i32.ne
       (i32.shr_s
        (i32.shl
         (get_local $5)
         (i32.const 16)
        )
        (i32.const 16)
       )
       ;;@ contracts/utils.ts:49:19
       (i32.const 0)
      )
      ;;@ contracts/utils.ts:49:22
      (set_local $3
       ;;@ contracts/utils.ts:49:32
       (i32.const 1)
      )
     )
     ;;@ contracts/utils.ts:50:6
     (if
      ;;@ contracts/utils.ts:50:10
      (get_local $3)
      ;;@ contracts/utils.ts:50:17
      (block
       ;;@ contracts/utils.ts:51:8
       (set_local $6
        ;;@ contracts/utils.ts:51:33
        (call $~lib/string/String#charCodeAt
         ;;@ contracts/utils.ts:51:19
         (i32.const 12)
         ;;@ contracts/utils.ts:51:44
         (i32.shr_s
          (i32.shl
           (get_local $5)
           (i32.const 16)
          )
          (i32.const 16)
         )
        )
       )
       ;;@ contracts/utils.ts:52:8
       (i32.store16 offset=4
        ;;@ contracts/utils.ts:52:19
        (i32.add
         (get_local $1)
         ;;@ contracts/utils.ts:52:42
         (i32.shl
          ;;@ contracts/utils.ts:52:43
          (i32.sub
           ;;@ contracts/utils.ts:52:44
           (i32.const 12)
           ;;@ contracts/utils.ts:52:49
           (get_local $4)
          )
          ;;@ contracts/utils.ts:52:55
          (i32.const 1)
         )
        )
        ;;@ contracts/utils.ts:52:59
        (get_local $6)
       )
      )
     )
     ;;@ contracts/utils.ts:54:6
     (set_local $2
      (i64.shr_u
       (get_local $2)
       ;;@ contracts/utils.ts:54:14
       (if (result i64)
        ;;@ contracts/utils.ts:54:15
        (i32.eq
         (get_local $4)
         ;;@ contracts/utils.ts:54:20
         (i32.const 0)
        )
        ;;@ contracts/utils.ts:54:24
        (i64.const 4)
        ;;@ contracts/utils.ts:54:28
        (i64.const 5)
       )
      )
     )
    )
    ;;@ contracts/utils.ts:46:28
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ contracts/utils.ts:56:31
  (get_local $1)
 )
 (func $contracts/todolist/todo/Todo#to_string (; 48 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ contracts/todolist/todo.ts:35:8
  (set_local $1
   ;;@ contracts/todolist/todo.ts:35:22
   (call $contracts/utils/Name#constructor
    (i32.const 0)
    (i32.const 8)
   )
  )
  ;;@ contracts/todolist/todo.ts:36:8
  (i64.store
   (get_local $1)
   ;;@ contracts/todolist/todo.ts:36:24
   (i64.load offset=16
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:37:8
  (set_local $2
   ;;@ contracts/todolist/todo.ts:37:23
   (call $contracts/utils/Name#constructor
    (i32.const 0)
    ;;@ contracts/utils.ts:38:30
    (i32.const 8)
   )
  )
  ;;@ contracts/todolist/todo.ts:38:8
  (i64.store
   (get_local $2)
   ;;@ contracts/todolist/todo.ts:38:25
   (i64.load offset=24
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:39:104
  (call $~lib/string/String#concat
   ;;@ contracts/todolist/todo.ts:39:66
   (call $~lib/string/String#concat
    ;;@ contracts/todolist/todo.ts:39:37
    (call $~lib/string/String#concat
     ;;@ contracts/todolist/todo.ts:39:25
     (call $~lib/string/String#concat
      ;;@ contracts/todolist/todo.ts:39:15
      (i32.load offset=8
       (get_local $0)
      )
      ;;@ contracts/todolist/todo.ts:39:32
      (i32.const 180)
     )
     ;;@ contracts/todolist/todo.ts:39:53
     (call $contracts/utils/Name#to_string
      ;;@ contracts/todolist/todo.ts:39:44
      (get_local $2)
     )
    )
    ;;@ contracts/todolist/todo.ts:39:73
    (i32.const 180)
   )
   ;;@ contracts/todolist/todo.ts:39:93
   (call $contracts/utils/Name#to_string
    ;;@ contracts/todolist/todo.ts:39:85
    (get_local $1)
   )
  )
 )
 (func $contracts/todolist/todo/TodoContract#get (; 49 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  ;;@ contracts/todolist/todo.ts:60:8
  (set_local $2
   ;;@ contracts/todolist/todo.ts:60:24
   (call $contracts/todolist/todo/TodoContract#getTodoByKey
    ;;@ contracts/todolist/todo.ts:60:19
    (get_local $0)
    ;;@ contracts/todolist/todo.ts:60:37
    (get_local $1)
   )
  )
  ;;@ contracts/todolist/todo.ts:61:8
  (block $contracts/utils/print|inlined.0
   (set_local $3
    ;;@ contracts/todolist/todo.ts:61:19
    (call $contracts/todolist/todo/Todo#to_string
     ;;@ contracts/todolist/todo.ts:61:14
     (get_local $2)
    )
   )
   ;;@ contracts/utils.ts:9:6
   (call $contracts/eoslib/prints
    ;;@ contracts/utils.ts:9:17
    (call $~lib/string/String#toUTF8
     ;;@ contracts/utils.ts:9:13
     (get_local $3)
    )
   )
  )
 )
 (func $contracts/todolist/todo/TodoContract#update (; 50 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ contracts/todolist/todo.ts:107:8
  (set_local $3
   ;;@ contracts/todolist/todo.ts:107:24
   (call $contracts/todolist/todo/TodoContract#getTodoByKey
    ;;@ contracts/todolist/todo.ts:107:19
    (get_local $0)
    ;;@ contracts/todolist/todo.ts:107:37
    (get_local $1)
   )
  )
  ;;@ contracts/todolist/todo.ts:108:8
  (call $contracts/eoslib/require_auth
   ;;@ contracts/todolist/todo.ts:108:21
   (i64.load offset=16
    (get_local $3)
   )
  )
  ;;@ contracts/todolist/todo.ts:109:8
  (i32.store8 offset=12
   (get_local $3)
   (i32.and
    ;;@ contracts/todolist/todo.ts:109:25
    (get_local $2)
    (i32.const 1)
   )
  )
  ;;@ contracts/todolist/todo.ts:110:8
  (set_local $4
   ;;@ contracts/todolist/todo.ts:110:22
   (call $contracts/todolist/todo/Todo#to_ds
    ;;@ contracts/todolist/todo.ts:110:17
    (get_local $3)
   )
  )
  ;;@ contracts/todolist/todo.ts:111:12
  (call $contracts/eoslib/db_update_i64
   ;;@ contracts/todolist/todo.ts:111:26
   (i32.load offset=32
    (get_local $3)
   )
   ;;@ contracts/todolist/todo.ts:111:41
   (i64.load offset=16
    (get_local $3)
   )
   ;;@ contracts/todolist/todo.ts:111:55
   (i32.load offset=4
    ;;@ contracts/todolist/todo.ts:111:73
    (get_local $4)
   )
   ;;@ contracts/todolist/todo.ts:111:85
   (i32.load
    (get_local $4)
   )
  )
 )
 (func $contracts/todolist/todo/TodoContract#remove (; 51 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  ;;@ contracts/todolist/todo.ts:115:8
  (set_local $2
   ;;@ contracts/todolist/todo.ts:115:24
   (call $contracts/todolist/todo/TodoContract#getTodoByKey
    ;;@ contracts/todolist/todo.ts:115:19
    (get_local $0)
    ;;@ contracts/todolist/todo.ts:115:37
    (get_local $1)
   )
  )
  ;;@ contracts/todolist/todo.ts:116:8
  (call $contracts/eoslib/require_auth
   ;;@ contracts/todolist/todo.ts:116:21
   (i64.load offset=16
    (get_local $2)
   )
  )
  ;;@ contracts/todolist/todo.ts:117:12
  (call $contracts/eoslib/db_remove_i64
   ;;@ contracts/todolist/todo.ts:117:26
   (i32.load offset=32
    (get_local $2)
   )
  )
 )
 (func $contracts/todolist/todo/TodoContract#removeAll (; 52 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ contracts/todolist/todo.ts:92:8
  (set_local $1
   ;;@ contracts/todolist/todo.ts:92:27
   (call $contracts/eoslib/db_lowerbound_i64
    ;;@ contracts/todolist/todo.ts:92:45
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:92:56
    (i64.load offset=24
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:92:68
    (i64.load offset=32
     (get_local $0)
    )
    ;;@ contracts/todolist/todo.ts:92:80
    (i64.const 0)
   )
  )
  ;;@ contracts/todolist/todo.ts:93:8
  (set_local $2
   ;;@ contracts/todolist/todo.ts:93:22
   (i32.const 0)
  )
  ;;@ contracts/todolist/todo.ts:94:8
  (block $break|0
   (loop $continue|0
    (if
     ;;@ contracts/todolist/todo.ts:94:15
     (i32.ge_s
      (get_local $1)
      ;;@ contracts/todolist/todo.ts:94:27
      (i32.const 0)
     )
     (block
      (block
       ;;@ contracts/todolist/todo.ts:95:12
       (set_local $3
        ;;@ contracts/todolist/todo.ts:95:22
        (get_local $1)
       )
       ;;@ contracts/todolist/todo.ts:96:12
       (set_local $1
        ;;@ contracts/todolist/todo.ts:96:27
        (call $contracts/eoslib/db_next_i64
         ;;@ contracts/todolist/todo.ts:96:39
         (get_local $1)
         ;;@ contracts/todolist/todo.ts:96:49
         (i32.add
          (get_local $0)
          ;;@ contracts/todolist/todo.ts:96:75
          (i32.const 40)
         )
        )
       )
       ;;@ contracts/todolist/todo.ts:99:16
       (call $contracts/eoslib/db_remove_i64
        ;;@ contracts/todolist/todo.ts:99:30
        (get_local $3)
       )
       ;;@ contracts/todolist/todo.ts:100:12
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:102:8
  (block $contracts/utils/print|inlined.1
   (set_local $3
    ;;@ contracts/todolist/todo.ts:102:14
    (i32.const 256)
   )
   ;;@ contracts/utils.ts:9:6
   (call $contracts/eoslib/prints
    ;;@ contracts/utils.ts:9:17
    (call $~lib/string/String#toUTF8
     ;;@ contracts/utils.ts:9:13
     (get_local $3)
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:103:12
  (call $contracts/eoslib/printi
   ;;@ contracts/todolist/todo.ts:103:19
   (i64.extend_u/i32
    (get_local $2)
   )
  )
 )
 (func $contracts/todolist/todo/TodoContract#assign (; 53 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  ;;@ contracts/todolist/todo.ts:121:8
  (set_local $3
   ;;@ contracts/todolist/todo.ts:121:24
   (call $contracts/todolist/todo/TodoContract#getTodoByKey
    ;;@ contracts/todolist/todo.ts:121:19
    (get_local $0)
    ;;@ contracts/todolist/todo.ts:121:37
    (get_local $1)
   )
  )
  ;;@ contracts/todolist/todo.ts:122:8
  (call $contracts/eoslib/require_auth
   ;;@ contracts/todolist/todo.ts:122:21
   (i64.load offset=16
    (get_local $3)
   )
  )
  ;;@ contracts/todolist/todo.ts:123:8
  (i64.store offset=24
   (get_local $3)
   ;;@ contracts/todolist/todo.ts:123:24
   (get_local $2)
  )
  ;;@ contracts/todolist/todo.ts:124:8
  (set_local $4
   ;;@ contracts/todolist/todo.ts:124:22
   (call $contracts/todolist/todo/Todo#to_ds
    ;;@ contracts/todolist/todo.ts:124:17
    (get_local $3)
   )
  )
  ;;@ contracts/todolist/todo.ts:125:12
  (call $contracts/eoslib/db_update_i64
   ;;@ contracts/todolist/todo.ts:125:26
   (i32.load offset=32
    (get_local $3)
   )
   ;;@ contracts/todolist/todo.ts:125:41
   (i64.load offset=16
    (get_local $3)
   )
   ;;@ contracts/todolist/todo.ts:125:55
   (i32.load offset=4
    ;;@ contracts/todolist/todo.ts:125:73
    (get_local $4)
   )
   ;;@ contracts/todolist/todo.ts:125:85
   (i32.load
    (get_local $4)
   )
  )
 )
 (func $contracts/todolist/todo/apply (; 54 ;) (type $IIIv) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ contracts/todolist/todo.ts:144:4
  (set_local $3
   ;;@ contracts/todolist/todo.ts:144:13
   (call $contracts/utils/get_ds)
  )
  ;;@ contracts/todolist/todo.ts:145:4
  (set_local $4
   ;;@ contracts/todolist/todo.ts:145:19
   (call $contracts/todolist/todo/TodoContract#constructor
    (i32.const 0)
    ;;@ contracts/todolist/todo.ts:145:36
    (get_local $0)
    ;;@ contracts/todolist/todo.ts:145:46
    (get_local $1)
    ;;@ contracts/todolist/todo.ts:145:52
    (get_local $2)
   )
  )
  ;;@ contracts/todolist/todo.ts:146:4
  (if
   ;;@ contracts/todolist/todo.ts:146:8
   (i64.eq
    (get_local $2)
    ;;@ contracts/todolist/todo.ts:146:18
    (call $contracts/utils/N
     ;;@ contracts/todolist/todo.ts:146:20
     (i32.const 92)
    )
   )
   ;;@ contracts/todolist/todo.ts:146:28
   (call $contracts/todolist/todo/TodoContract#add
    ;;@ contracts/todolist/todo.ts:147:7
    (get_local $4)
    ;;@ contracts/todolist/todo.ts:147:23
    (call $contracts/datastream/DataStream#readString
     ;;@ contracts/todolist/todo.ts:147:20
     (get_local $3)
    )
    ;;@ contracts/todolist/todo.ts:147:40
    (call $contracts/datastream/DataStream#read<u64>
     ;;@ contracts/todolist/todo.ts:147:37
     (get_local $3)
    )
   )
   ;;@ contracts/todolist/todo.ts:149:9
   (if
    ;;@ contracts/todolist/todo.ts:149:13
    (i64.eq
     (get_local $2)
     ;;@ contracts/todolist/todo.ts:149:23
     (call $contracts/utils/N
      ;;@ contracts/todolist/todo.ts:149:25
      (i32.const 136)
     )
    )
    ;;@ contracts/todolist/todo.ts:149:33
    (call $contracts/todolist/todo/TodoContract#get
     ;;@ contracts/todolist/todo.ts:150:7
     (get_local $4)
     ;;@ contracts/todolist/todo.ts:150:23
     (i64.extend_u/i32
      (call $contracts/datastream/DataStream#readVarint32
       ;;@ contracts/todolist/todo.ts:150:20
       (get_local $3)
      )
     )
    )
    ;;@ contracts/todolist/todo.ts:152:9
    (if
     ;;@ contracts/todolist/todo.ts:152:13
     (i64.eq
      (get_local $2)
      ;;@ contracts/todolist/todo.ts:152:23
      (call $contracts/utils/N
       ;;@ contracts/todolist/todo.ts:152:25
       (i32.const 200)
      )
     )
     ;;@ contracts/todolist/todo.ts:152:36
     (call $contracts/todolist/todo/TodoContract#update
      ;;@ contracts/todolist/todo.ts:153:7
      (get_local $4)
      ;;@ contracts/todolist/todo.ts:153:26
      (call $contracts/datastream/DataStream#read<u64>
       ;;@ contracts/todolist/todo.ts:153:23
       (get_local $3)
      )
      ;;@ contracts/todolist/todo.ts:153:42
      (call $contracts/datastream/DataStream#read<bool>
       ;;@ contracts/todolist/todo.ts:153:39
       (get_local $3)
      )
     )
     ;;@ contracts/todolist/todo.ts:155:9
     (if
      ;;@ contracts/todolist/todo.ts:155:13
      (i64.eq
       (get_local $2)
       ;;@ contracts/todolist/todo.ts:155:23
       (call $contracts/utils/N
        ;;@ contracts/todolist/todo.ts:155:25
        (i32.const 216)
       )
      )
      ;;@ contracts/todolist/todo.ts:155:36
      (call $contracts/todolist/todo/TodoContract#remove
       ;;@ contracts/todolist/todo.ts:156:7
       (get_local $4)
       ;;@ contracts/todolist/todo.ts:156:26
       (call $contracts/datastream/DataStream#read<u64>
        ;;@ contracts/todolist/todo.ts:156:23
        (get_local $3)
       )
      )
      ;;@ contracts/todolist/todo.ts:158:9
      (if
       ;;@ contracts/todolist/todo.ts:158:13
       (i64.eq
        (get_local $2)
        ;;@ contracts/todolist/todo.ts:158:23
        (call $contracts/utils/N
         ;;@ contracts/todolist/todo.ts:158:25
         (i32.const 232)
        )
       )
       ;;@ contracts/todolist/todo.ts:158:39
       (call $contracts/todolist/todo/TodoContract#removeAll
        ;;@ contracts/todolist/todo.ts:159:8
        (get_local $4)
       )
       ;;@ contracts/todolist/todo.ts:161:9
       (if
        ;;@ contracts/todolist/todo.ts:161:13
        (i64.eq
         (get_local $2)
         ;;@ contracts/todolist/todo.ts:161:23
         (call $contracts/utils/N
          ;;@ contracts/todolist/todo.ts:161:25
          (i32.const 276)
         )
        )
        ;;@ contracts/todolist/todo.ts:161:36
        (call $contracts/todolist/todo/TodoContract#assign
         ;;@ contracts/todolist/todo.ts:162:8
         (get_local $4)
         ;;@ contracts/todolist/todo.ts:162:27
         (call $contracts/datastream/DataStream#read<u64>
          ;;@ contracts/todolist/todo.ts:162:24
          (get_local $3)
         )
         ;;@ contracts/todolist/todo.ts:162:43
         (call $contracts/datastream/DataStream#read<u64>
          ;;@ contracts/todolist/todo.ts:162:40
          (get_local $3)
         )
        )
        ;;@ contracts/todolist/todo.ts:164:9
        (block $contracts/utils/print|inlined.2
         (set_local $5
          ;;@ contracts/todolist/todo.ts:165:14
          (i32.const 292)
         )
         ;;@ contracts/utils.ts:9:6
         (call $contracts/eoslib/prints
          ;;@ contracts/utils.ts:9:17
          (call $~lib/string/String#toUTF8
           ;;@ contracts/utils.ts:9:13
           (get_local $5)
          )
         )
        )
       )
      )
     )
    )
   )
  )
 )
 (func $start (; 55 ;) (type $v)
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
