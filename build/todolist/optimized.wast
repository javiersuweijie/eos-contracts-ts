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
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 328))
 (memory $0 1)
 (data (i32.const 12) " \00\00\00.\001\002\003\004\005\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 80) "\04\00\00\00t\00o\00d\00o")
 (data (i32.const 92) "\03\00\00\00a\00d\00d")
 (data (i32.const 104) "\0d\00\00\00T\00a\00s\00k\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 136) "\03\00\00\00g\00e\00t")
 (data (i32.const 148) "\0e\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 180) "\01\00\00\00|")
 (data (i32.const 188) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 200) "\06\00\00\00u\00p\00d\00a\00t\00e")
 (data (i32.const 216) "\06\00\00\00r\00e\00m\00o\00v\00e")
 (data (i32.const 232) "\t\00\00\00r\00e\00m\00o\00v\00e\00a\00l\00l")
 (data (i32.const 256) "\08\00\00\00R\00e\00m\00o\00v\00e\00d\00 ")
 (data (i32.const 276) "\06\00\00\00a\00s\00s\00i\00g\00n")
 (data (i32.const 292) "\10\00\00\00A\00c\00t\00i\00o\00n\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (export "apply" (func $contracts/todolist/todo/apply))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 15 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/set_memory (; 16 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/typedarray/TypedArray<u8,u32>#constructor (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $contracts/datastream/DataStream#constructor (; 18 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $contracts/utils/N (; 19 ;) (type $iI) (param $0 i32) (result i64)
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
 (func $contracts/todolist/todo/TodoContract#constructor (; 20 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i64.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 44)
      )
     )
     (i64.const 0)
    )
    (i64.store offset=8
     (get_local $0)
     (i64.const 0)
    )
    (i64.store offset=16
     (get_local $0)
     (i64.const 0)
    )
    (i64.store offset=24
     (get_local $0)
     (i64.const 0)
    )
    (i64.store offset=32
     (get_local $0)
     (i64.const 0)
    )
    (i32.store offset=40
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:52:8
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  ;;@ contracts/todolist/todo.ts:53:8
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  ;;@ contracts/todolist/todo.ts:54:8
  (i64.store offset=16
   (get_local $0)
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
 (func $contracts/datastream/DataStream#readVarint32 (; 21 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $node_modules/assemblyscript/std/assembly/internal/string/allocate (; 22 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:22:2
  (i32.store
   ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:21:2
   (tee_local $1
    ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:21:15
    (call $~lib/allocator/arena/allocate_memory
     ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:21:31
     (i32.add
      ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:21:45
      (i32.shl
       (get_local $0)
       ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:21:63
       (i32.const 1)
      )
      ;;@ node_modules/assemblyscript/std/assembly/internal/string.ts:21:31
      (i32.const 4)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $contracts/datastream/DataStream#readString (; 23 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ contracts/datastream.ts:62:4
  (if
   (i32.eqz
    ;;@ contracts/datastream.ts:61:4
    (tee_local $2
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
  ;;@ contracts/datastream.ts:63:4
  (set_local $3
   ;;@ contracts/datastream.ts:63:12
   (call $node_modules/assemblyscript/std/assembly/internal/string/allocate
    (get_local $2)
   )
  )
  (loop $continue|0
   (if
    ;;@ contracts/datastream.ts:66:10
    (i32.lt_u
     (get_local $1)
     (get_local $2)
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
        (get_local $1)
        ;;@ contracts/datastream.ts:68:34
        (i32.const 1)
       )
      )
      (get_local $4)
     )
     ;;@ contracts/datastream.ts:69:6
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $3)
 )
 (func $~lib/string/String#get:lengthUTF8 (; 24 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/string/String#toUTF8 (; 25 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $contracts/todolist/todo/Todo#from_ds (; 26 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (set_local $2
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
  ;;@ contracts/todolist/todo.ts:16:8
  (i64.store
   (get_local $0)
   (get_local $2)
  )
  (set_local $2
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
  ;;@ contracts/todolist/todo.ts:17:8
  (i64.store offset=16
   (get_local $0)
   (get_local $2)
  )
  (set_local $2
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
  ;;@ contracts/todolist/todo.ts:18:8
  (i64.store offset=24
   (get_local $0)
   (get_local $2)
  )
  (set_local $3
   (i32.load8_u
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
    (i32.const 1)
   )
  )
  ;;@ contracts/todolist/todo.ts:19:8
  (i32.store8 offset=12
   (get_local $0)
   (get_local $3)
  )
  ;;@ contracts/todolist/todo.ts:20:8
  (i32.store offset=8
   (get_local $0)
   ;;@ contracts/todolist/todo.ts:20:23
   (call $contracts/datastream/DataStream#readString
    (get_local $1)
   )
  )
 )
 (func $contracts/datastream/DataStream#writeVarint32 (; 27 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (loop $continue|0
   (i32.store8
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.load
      (get_local $0)
     )
    )
    (i32.or
     ;;@ contracts/datastream.ts:30:20
     (i32.and
      (get_local $1)
      ;;@ contracts/datastream.ts:30:32
      (i32.const 127)
     )
     ;;@ contracts/datastream.ts:32:11
     (i32.shl
      ;;@ contracts/datastream.ts:32:12
      (if (result i32)
       ;;@ contracts/datastream.ts:32:13
       (i32.gt_u
        ;;@ contracts/datastream.ts:31:6
        (tee_local $1
         (i32.shr_u
          (get_local $1)
          ;;@ contracts/datastream.ts:31:16
          (i32.const 7)
         )
        )
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
   (i32.store
    (get_local $0)
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (br_if $continue|0
    (get_local $1)
   )
  )
 )
 (func $~lib/memory/copy_memory (; 28 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (loop $continue|0
   (if
    (tee_local $3
     ;;@ ~lib/memory.ts:8:9
     (if (result i32)
      (get_local $2)
      ;;@ ~lib/memory.ts:8:14
      (i32.and
       (get_local $1)
       ;;@ ~lib/memory.ts:8:21
       (i32.const 3)
      )
      (get_local $2)
     )
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $4
        ;;@ ~lib/memory.ts:9:14
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (get_local $1)
       )
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:9:4
     (i32.store8
      (get_local $4)
      ;;@ ~lib/memory.ts:9:22
      (i32.load8_u
       (get_local $3)
      )
     )
     ;;@ ~lib/memory.ts:10:4
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ ~lib/memory.ts:14:2
  (if
   (i32.eqz
    ;;@ ~lib/memory.ts:14:6
    (i32.and
     (get_local $0)
     ;;@ ~lib/memory.ts:14:14
     (i32.const 3)
    )
   )
   ;;@ ~lib/memory.ts:14:23
   (block
    (loop $continue|1
     (if
      ;;@ ~lib/memory.ts:15:11
      (i32.ge_u
       (get_local $2)
       ;;@ ~lib/memory.ts:15:16
       (i32.const 16)
      )
      (block
       ;;@ ~lib/memory.ts:16:6
       (i32.store
        (get_local $0)
        ;;@ ~lib/memory.ts:16:28
        (i32.load
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
       (br $continue|1)
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
       (get_local $0)
       ;;@ ~lib/memory.ts:23:27
       (i32.load
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
       (get_local $0)
       ;;@ ~lib/memory.ts:28:23
       (i32.load
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
       (get_local $0)
       ;;@ ~lib/memory.ts:32:23
       (i32.load16_u
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
     (block
      (set_local $3
       (get_local $1)
      )
      ;;@ ~lib/memory.ts:35:15
      (i32.store8
       (get_local $0)
       ;;@ ~lib/memory.ts:36:24
       (i32.load8_u
        (get_local $1)
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
      (if
       (i32.ne
        (tee_local $3
         ;;@ ~lib/memory.ts:44:12
         (i32.and
          (get_local $0)
          ;;@ ~lib/memory.ts:44:19
          (i32.const 3)
         )
        )
        ;;@ ~lib/memory.ts:46:11
        (i32.const 1)
       )
       (block
        (br_if $case1|2
         (i32.eq
          (get_local $3)
          ;;@ ~lib/memory.ts:65:11
          (i32.const 2)
         )
        )
        (br_if $case2|2
         (i32.eq
          (get_local $3)
          ;;@ ~lib/memory.ts:83:11
          (i32.const 3)
         )
        )
        (br $break|2)
       )
      )
      ;;@ ~lib/memory.ts:47:8
      (set_local $5
       ;;@ ~lib/memory.ts:47:12
       (i32.load
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:48:8
      (i32.store8
       ;;@ ~lib/memory.ts:48:18
       (get_local $0)
       ;;@ ~lib/memory.ts:48:26
       (i32.load8_u
        (tee_local $3
         (get_local $1)
        )
       )
      )
      (set_local $0
       (tee_local $1
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      ;;@ ~lib/memory.ts:49:8
      (i32.store8
       (get_local $1)
       ;;@ ~lib/memory.ts:49:26
       (i32.load8_u
        (tee_local $1
         (i32.add
          (get_local $3)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $4
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (tee_local $3
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:50:8
      (i32.store8
       (get_local $4)
       ;;@ ~lib/memory.ts:50:26
       (i32.load8_u
        (get_local $3)
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
      (loop $continue|3
       (if
        ;;@ ~lib/memory.ts:52:15
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:52:20
         (i32.const 17)
        )
        (block
         ;;@ ~lib/memory.ts:54:10
         (i32.store
          (get_local $0)
          ;;@ ~lib/memory.ts:54:27
          (i32.or
           (i32.shr_u
            (get_local $5)
            ;;@ ~lib/memory.ts:54:32
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:54:37
           (i32.shl
            ;;@ ~lib/memory.ts:53:10
            (tee_local $3
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
            ;;@ ~lib/memory.ts:54:42
            (i32.const 8)
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
            (get_local $3)
            ;;@ ~lib/memory.ts:56:36
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:56:41
           (i32.shl
            ;;@ ~lib/memory.ts:55:10
            (tee_local $5
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
            ;;@ ~lib/memory.ts:56:46
            (i32.const 8)
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
            (get_local $5)
            ;;@ ~lib/memory.ts:58:36
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:58:41
           (i32.shl
            ;;@ ~lib/memory.ts:57:10
            (tee_local $3
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
            ;;@ ~lib/memory.ts:58:46
            (i32.const 8)
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
            (get_local $3)
            ;;@ ~lib/memory.ts:60:37
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:60:42
           (i32.shl
            ;;@ ~lib/memory.ts:59:10
            (tee_local $5
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
         (br $continue|3)
        )
       )
      )
      ;;@ ~lib/memory.ts:63:8
      (br $break|2)
     )
     ;;@ ~lib/memory.ts:66:8
     (set_local $5
      ;;@ ~lib/memory.ts:66:12
      (i32.load
       (get_local $1)
      )
     )
     ;;@ ~lib/memory.ts:67:8
     (i32.store8
      ;;@ ~lib/memory.ts:67:18
      (get_local $0)
      ;;@ ~lib/memory.ts:67:26
      (i32.load8_u
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:68:8
     (i32.store8
      (get_local $4)
      ;;@ ~lib/memory.ts:68:26
      (i32.load8_u
       (get_local $3)
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
     (loop $continue|4
      (if
       ;;@ ~lib/memory.ts:70:15
       (i32.ge_u
        (get_local $2)
        ;;@ ~lib/memory.ts:70:20
        (i32.const 18)
       )
       (block
        ;;@ ~lib/memory.ts:72:10
        (i32.store
         (get_local $0)
         ;;@ ~lib/memory.ts:72:27
         (i32.or
          (i32.shr_u
           (get_local $5)
           ;;@ ~lib/memory.ts:72:32
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:72:37
          (i32.shl
           ;;@ ~lib/memory.ts:71:10
           (tee_local $3
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
           ;;@ ~lib/memory.ts:72:42
           (i32.const 16)
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
           (get_local $3)
           ;;@ ~lib/memory.ts:74:36
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:74:41
          (i32.shl
           ;;@ ~lib/memory.ts:73:10
           (tee_local $5
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
           ;;@ ~lib/memory.ts:74:46
           (i32.const 16)
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
           (get_local $5)
           ;;@ ~lib/memory.ts:76:36
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:76:41
          (i32.shl
           ;;@ ~lib/memory.ts:75:10
           (tee_local $3
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
           ;;@ ~lib/memory.ts:76:46
           (i32.const 16)
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
           (get_local $3)
           ;;@ ~lib/memory.ts:78:37
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:78:42
          (i32.shl
           ;;@ ~lib/memory.ts:77:10
           (tee_local $5
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
        (br $continue|4)
       )
      )
     )
     ;;@ ~lib/memory.ts:81:8
     (br $break|2)
    )
    ;;@ ~lib/memory.ts:84:8
    (set_local $5
     ;;@ ~lib/memory.ts:84:12
     (i32.load
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       ;;@ ~lib/memory.ts:85:18
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (get_local $1)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:85:8
    (i32.store8
     (get_local $4)
     ;;@ ~lib/memory.ts:85:26
     (i32.load8_u
      (get_local $3)
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
    (loop $continue|5
     (if
      ;;@ ~lib/memory.ts:87:15
      (i32.ge_u
       (get_local $2)
       ;;@ ~lib/memory.ts:87:20
       (i32.const 19)
      )
      (block
       ;;@ ~lib/memory.ts:89:10
       (i32.store
        (get_local $0)
        ;;@ ~lib/memory.ts:89:27
        (i32.or
         (i32.shr_u
          (get_local $5)
          ;;@ ~lib/memory.ts:89:32
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:89:36
         (i32.shl
          ;;@ ~lib/memory.ts:88:10
          (tee_local $3
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
          ;;@ ~lib/memory.ts:89:41
          (i32.const 24)
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
          (get_local $3)
          ;;@ ~lib/memory.ts:91:36
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:91:40
         (i32.shl
          ;;@ ~lib/memory.ts:90:10
          (tee_local $5
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
          ;;@ ~lib/memory.ts:91:45
          (i32.const 24)
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
          (get_local $5)
          ;;@ ~lib/memory.ts:93:36
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:93:40
         (i32.shl
          ;;@ ~lib/memory.ts:92:10
          (tee_local $3
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
          ;;@ ~lib/memory.ts:93:45
          (i32.const 24)
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
          (get_local $3)
          ;;@ ~lib/memory.ts:95:37
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:95:41
         (i32.shl
          ;;@ ~lib/memory.ts:94:10
          (tee_local $5
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
       (br $continue|5)
      )
     )
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
     (get_local $0)
     ;;@ ~lib/memory.ts:105:22
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:106:4
    (i32.store8
     (get_local $1)
     ;;@ ~lib/memory.ts:106:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:107:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:107:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:108:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:108:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:109:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:109:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:110:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:110:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:111:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:111:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:112:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:112:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:113:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:113:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:114:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:114:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:115:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:115:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:116:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:116:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:117:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:117:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:118:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:118:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:119:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:119:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:120:4
    (i32.store8
     (get_local $4)
     ;;@ ~lib/memory.ts:120:22
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     ;;@ ~lib/memory.ts:123:22
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:124:4
    (i32.store8
     (get_local $1)
     ;;@ ~lib/memory.ts:124:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:125:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:125:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:126:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:126:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:127:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:127:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:128:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:128:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:129:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:129:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:130:4
    (i32.store8
     (get_local $4)
     ;;@ ~lib/memory.ts:130:22
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     ;;@ ~lib/memory.ts:133:22
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:134:4
    (i32.store8
     (get_local $1)
     ;;@ ~lib/memory.ts:134:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:135:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:135:22
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:136:4
    (i32.store8
     (get_local $4)
     ;;@ ~lib/memory.ts:136:22
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     ;;@ ~lib/memory.ts:139:22
     (i32.load8_u
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:140:4
    (i32.store8
     (get_local $4)
     ;;@ ~lib/memory.ts:140:22
     (i32.load8_u
      (get_local $3)
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
   (block
    (set_local $3
     (get_local $1)
    )
    ;;@ ~lib/memory.ts:142:13
    (i32.store8
     (get_local $0)
     ;;@ ~lib/memory.ts:143:22
     (i32.load8_u
      (get_local $1)
     )
    )
   )
  )
 )
 (func $~lib/memory/move_memory (; 29 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/memory.ts:151:2
  (if
   ;;@ ~lib/memory.ts:151:6
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:151:19
   (return)
  )
  ;;@ ~lib/memory.ts:152:6
  (if
   (i32.eqz
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
   )
   (set_local $3
    ;;@ ~lib/memory.ts:152:25
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
  )
  ;;@ ~lib/memory.ts:152:2
  (if
   (get_local $3)
   ;;@ ~lib/memory.ts:152:42
   (block
    ;;@ ~lib/memory.ts:153:4
    (call $~lib/memory/copy_memory
     (get_local $0)
     (get_local $1)
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
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:156:18
   (block
    ;;@ ~lib/memory.ts:157:4
    (if
     ;;@ ~lib/memory.ts:157:8
     (i32.eq
      (i32.and
       (get_local $1)
       ;;@ ~lib/memory.ts:157:15
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:157:21
      (i32.and
       (get_local $0)
       ;;@ ~lib/memory.ts:157:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:157:33
     (block
      (loop $continue|0
       (if
        ;;@ ~lib/memory.ts:158:13
        (i32.and
         (get_local $0)
         ;;@ ~lib/memory.ts:158:20
         (i32.const 7)
        )
        (block
         ;;@ ~lib/memory.ts:159:8
         (if
          ;;@ ~lib/memory.ts:159:12
          (i32.eqz
           (get_local $2)
          )
          ;;@ ~lib/memory.ts:159:16
          (return)
         )
         ;;@ ~lib/memory.ts:160:8
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $0
          (i32.add
           (tee_local $3
            (tee_local $4
             ;;@ ~lib/memory.ts:161:18
             (get_local $0)
            )
           )
           (i32.const 1)
          )
         )
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         ;;@ ~lib/memory.ts:161:8
         (i32.store8
          (get_local $4)
          ;;@ ~lib/memory.ts:161:26
          (i32.load8_u
           (get_local $3)
          )
         )
         (br $continue|0)
        )
       )
      )
      (loop $continue|1
       (if
        ;;@ ~lib/memory.ts:163:13
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:163:18
         (i32.const 8)
        )
        (block
         ;;@ ~lib/memory.ts:164:8
         (i64.store
          (get_local $0)
          ;;@ ~lib/memory.ts:164:25
          (i64.load
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
         (br $continue|1)
        )
       )
      )
     )
    )
    (loop $continue|2
     (if
      (get_local $2)
      (block
       (set_local $0
        (i32.add
         (tee_local $3
          (tee_local $4
           ;;@ ~lib/memory.ts:171:16
           (get_local $0)
          )
         )
         (i32.const 1)
        )
       )
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:171:6
       (i32.store8
        (get_local $4)
        ;;@ ~lib/memory.ts:171:24
        (i32.load8_u
         (get_local $3)
        )
       )
       ;;@ ~lib/memory.ts:172:6
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $continue|2)
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
       (get_local $1)
       ;;@ ~lib/memory.ts:175:15
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:175:21
      (i32.and
       (get_local $0)
       ;;@ ~lib/memory.ts:175:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:175:33
     (block
      (loop $continue|3
       (if
        ;;@ ~lib/memory.ts:176:13
        (i32.and
         (i32.add
          (get_local $0)
          (get_local $2)
         )
         ;;@ ~lib/memory.ts:176:26
         (i32.const 7)
        )
        (block
         ;;@ ~lib/memory.ts:177:8
         (if
          ;;@ ~lib/memory.ts:177:12
          (i32.eqz
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
            (get_local $2)
           )
          )
         )
         (br $continue|3)
        )
       )
      )
      (loop $continue|4
       (if
        ;;@ ~lib/memory.ts:180:13
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:180:18
         (i32.const 8)
        )
        (block
         ;;@ ~lib/memory.ts:182:8
         (i64.store
          ;;@ ~lib/memory.ts:182:19
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:181:8
           (tee_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:181:13
             (i32.const 8)
            )
           )
          )
          ;;@ ~lib/memory.ts:182:29
          (i64.load
           ;;@ ~lib/memory.ts:182:39
           (i32.add
            (get_local $1)
            (get_local $2)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (loop $continue|5
     (if
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
 (func $contracts/datastream/DataStream#writeString (; 30 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ contracts/datastream.ts:77:9
  (call $contracts/datastream/DataStream#writeVarint32
   (get_local $0)
   ;;@ contracts/datastream.ts:76:4
   (tee_local $2
    ;;@ contracts/datastream.ts:76:20
    (i32.load
     (get_local $1)
    )
   )
  )
  ;;@ contracts/datastream.ts:78:4
  (if
   (i32.eqz
    (get_local $2)
   )
   ;;@ contracts/datastream.ts:78:17
   (return)
  )
  ;;@ contracts/datastream.ts:80:4
  (set_local $3
   ;;@ contracts/datastream.ts:80:18
   (call $~lib/string/String#toUTF8
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
   (get_local $3)
   (tee_local $1
    ;;@ contracts/datastream.ts:83:52
    (i32.sub
     (get_local $2)
     ;;@ contracts/datastream.ts:83:58
     (i32.const 1)
    )
   )
  )
  ;;@ contracts/datastream.ts:84:4
  (i32.store
   (get_local $0)
   (i32.add
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $contracts/todolist/todo/Todo#to_ds (; 31 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i64.store
   (i32.add
    (i32.load offset=4
     ;;@ contracts/todolist/todo.ts:25:8
     (tee_local $1
      ;;@ contracts/todolist/todo.ts:25:17
      (call $contracts/datastream/DataStream#constructor
       (i32.const 0)
       ;;@ contracts/todolist/todo.ts:25:32
       (i32.load
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
       ;;@ contracts/todolist/todo.ts:25:63
       (i32.load
        (i32.load offset=8
         (get_local $0)
        )
       )
      )
     )
    )
    (i32.load
     (get_local $1)
    )
   )
   ;;@ contracts/todolist/todo.ts:26:22
   (i64.load
    (get_local $0)
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
   (i32.add
    (i32.load offset=4
     (get_local $1)
    )
    (i32.load
     (get_local $1)
    )
   )
   ;;@ contracts/todolist/todo.ts:27:22
   (i64.load offset=16
    (get_local $0)
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
   (i32.add
    (i32.load offset=4
     (get_local $1)
    )
    (i32.load
     (get_local $1)
    )
   )
   ;;@ contracts/todolist/todo.ts:28:22
   (i64.load offset=24
    (get_local $0)
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
  (i32.store8
   (i32.add
    (i32.load offset=4
     (get_local $1)
    )
    (i32.load
     (get_local $1)
    )
   )
   ;;@ contracts/todolist/todo.ts:29:23
   (i32.load8_u offset=12
    (get_local $0)
   )
  )
  (i32.store
   (get_local $1)
   (i32.add
    (i32.load
     (get_local $1)
    )
    (i32.const 1)
   )
  )
  ;;@ contracts/todolist/todo.ts:30:11
  (call $contracts/datastream/DataStream#writeString
   (get_local $1)
   ;;@ contracts/todolist/todo.ts:30:23
   (i32.load offset=8
    (get_local $0)
   )
  )
  (get_local $1)
 )
 (func $contracts/todolist/todo/TodoContract#add (; 32 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  ;;@ contracts/utils.ts:14:2
  (if
   ;;@ contracts/todolist/todo.ts:65:15
   (i32.le_s
    (i32.load
     (get_local $1)
    )
    ;;@ contracts/todolist/todo.ts:65:29
    (i32.const 0)
   )
   ;;@ contracts/utils.ts:14:21
   (call $contracts/eoslib/eosio_assert
    ;;@ contracts/utils.ts:14:34
    (i32.const 0)
    (tee_local $3
     ;;@ contracts/utils.ts:14:47
     (call $~lib/string/String#toUTF8
      (i32.const 104)
     )
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:66:12
  (call $contracts/eoslib/require_auth
   (get_local $2)
  )
  ;;@ contracts/todolist/todo.ts:68:8
  (set_local $3
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
  ;;@ contracts/todolist/todo.ts:70:8
  (if
   ;;@ contracts/todolist/todo.ts:70:12
   (i32.ne
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
    (get_local $3)
   )
   ;;@ contracts/todolist/todo.ts:70:29
   (block
    ;;@ contracts/todolist/todo.ts:72:12
    (set_local $4
     ;;@ contracts/todolist/todo.ts:72:26
     (call $contracts/eoslib/db_get_i64
      ;;@ contracts/todolist/todo.ts:71:12
      (tee_local $3
       ;;@ contracts/todolist/todo.ts:71:27
       (call $contracts/eoslib/db_previous_i64
        (get_local $3)
        ;;@ contracts/todolist/todo.ts:71:48
        (i32.const 40)
       )
      )
      ;;@ contracts/todolist/todo.ts:72:47
      (i32.const 0)
      ;;@ contracts/todolist/todo.ts:72:50
      (i32.const 0)
     )
    )
    ;;@ contracts/todolist/todo.ts:74:16
    (drop
     (call $contracts/eoslib/db_get_i64
      (get_local $3)
      ;;@ contracts/todolist/todo.ts:74:37
      (i32.load
       ;;@ contracts/todolist/todo.ts:73:12
       (tee_local $3
        ;;@ contracts/todolist/todo.ts:73:22
        (call $~lib/internal/typedarray/TypedArray<u8,u32>#constructor
         (i32.const 0)
         (get_local $4)
        )
       )
      )
      (get_local $4)
     )
    )
    ;;@ contracts/todolist/todo.ts:75:12
    (set_local $4
     ;;@ contracts/todolist/todo.ts:75:21
     (call $contracts/datastream/DataStream#constructor
      (i32.const 0)
      ;;@ contracts/todolist/todo.ts:75:36
      (i32.load
       (get_local $3)
      )
      (get_local $4)
     )
    )
    (i64.store
     (tee_local $3
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 36)
      )
     )
     (i64.const 0)
    )
    (i32.store offset=8
     (get_local $3)
     (i32.const 0)
    )
    (i32.store8 offset=12
     (get_local $3)
     (i32.const 0)
    )
    (i64.store offset=16
     (get_local $3)
     (i64.const 0)
    )
    (i64.store offset=24
     (get_local $3)
     (i64.const 0)
    )
    (i32.store offset=32
     (get_local $3)
     (i32.const 0)
    )
    ;;@ contracts/todolist/todo.ts:77:22
    (call $contracts/todolist/todo/Todo#from_ds
     (get_local $3)
     (get_local $4)
    )
    ;;@ contracts/todolist/todo.ts:78:12
    (set_local $5
     ;;@ contracts/todolist/todo.ts:78:18
     (i64.add
      (i64.load
       (get_local $3)
      )
      ;;@ contracts/todolist/todo.ts:78:38
      (i64.const 1)
     )
    )
   )
  )
  (i64.store
   (tee_local $3
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 36)
    )
   )
   (i64.const 0)
  )
  (i32.store offset=8
   (get_local $3)
   (i32.const 0)
  )
  (i32.store8 offset=12
   (get_local $3)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $3)
   (i64.const 0)
  )
  (i32.store offset=32
   (get_local $3)
   (i32.const 0)
  )
  ;;@ contracts/todolist/todo.ts:82:8
  (i64.store
   (get_local $3)
   (get_local $5)
  )
  ;;@ contracts/todolist/todo.ts:83:8
  (i64.store offset=24
   (get_local $3)
   ;;@ contracts/todolist/todo.ts:83:24
   (i64.load offset=8
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:84:8
  (i64.store offset=16
   (get_local $3)
   (get_local $2)
  )
  ;;@ contracts/todolist/todo.ts:85:8
  (i32.store8 offset=12
   (get_local $3)
   ;;@ contracts/todolist/todo.ts:85:25
   (i32.const 0)
  )
  ;;@ contracts/todolist/todo.ts:86:8
  (i32.store offset=8
   (get_local $3)
   (get_local $1)
  )
  ;;@ contracts/todolist/todo.ts:87:8
  (set_local $4
   ;;@ contracts/todolist/todo.ts:87:30
   (call $contracts/todolist/todo/Todo#to_ds
    (get_local $3)
   )
  )
  ;;@ contracts/todolist/todo.ts:88:8
  (drop
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
    (get_local $2)
    ;;@ contracts/todolist/todo.ts:88:69
    (i64.load
     (get_local $3)
    )
    ;;@ contracts/todolist/todo.ts:88:83
    (i32.load offset=4
     (get_local $4)
    )
    ;;@ contracts/todolist/todo.ts:88:102
    (i32.load
     (get_local $4)
    )
   )
  )
 )
 (func $contracts/todolist/todo/TodoContract#getTodoByKey (; 33 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ contracts/utils.ts:14:2
  (if
   ;;@ contracts/todolist/todo.ts:131:15
   (i32.lt_s
    ;;@ contracts/todolist/todo.ts:130:8
    (tee_local $0
     ;;@ contracts/todolist/todo.ts:130:22
     (call $contracts/eoslib/db_get_i64
      ;;@ contracts/todolist/todo.ts:129:8
      (tee_local $3
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
        (get_local $1)
       )
      )
      ;;@ contracts/todolist/todo.ts:130:43
      (i32.const 0)
      ;;@ contracts/todolist/todo.ts:130:46
      (i32.const 0)
     )
    )
    ;;@ contracts/todolist/todo.ts:131:22
    (i32.const 0)
   )
   ;;@ contracts/utils.ts:14:21
   (call $contracts/eoslib/eosio_assert
    ;;@ contracts/utils.ts:14:34
    (i32.const 0)
    (tee_local $2
     ;;@ contracts/utils.ts:14:47
     (call $~lib/string/String#toUTF8
      (i32.const 148)
     )
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:133:12
  (drop
   (call $contracts/eoslib/db_get_i64
    (get_local $3)
    ;;@ contracts/todolist/todo.ts:133:33
    (i32.load
     ;;@ contracts/todolist/todo.ts:132:8
     (tee_local $2
      ;;@ contracts/todolist/todo.ts:132:18
      (call $~lib/internal/typedarray/TypedArray<u8,u32>#constructor
       (i32.const 0)
       (get_local $0)
      )
     )
    )
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:135:8
  (set_local $2
   ;;@ contracts/todolist/todo.ts:135:21
   (call $contracts/datastream/DataStream#constructor
    (i32.const 0)
    ;;@ contracts/todolist/todo.ts:135:36
    (i32.load
     (get_local $2)
    )
    (get_local $0)
   )
  )
  (i64.store
   (tee_local $0
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 36)
    )
   )
   (i64.const 0)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 0)
  )
  (i32.store8 offset=12
   (get_local $0)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $0)
   (i64.const 0)
  )
  (i32.store offset=32
   (get_local $0)
   (i32.const 0)
  )
  ;;@ contracts/todolist/todo.ts:137:8
  (i32.store offset=32
   (get_local $0)
   (get_local $3)
  )
  ;;@ contracts/todolist/todo.ts:138:13
  (call $contracts/todolist/todo/Todo#from_ds
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $contracts/utils/Name#constructor (; 34 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (i64.store
    (tee_local $0
     (call $~lib/allocator/arena/allocate_memory
      (i32.const 8)
     )
    )
    (i64.const 0)
   )
  )
  ;;@ contracts/utils.ts:39:4
  (i64.store
   (get_local $0)
   ;;@ contracts/utils.ts:39:17
   (call $contracts/utils/N
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/string/String#concat (; 35 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/string.ts:75:4
  (if
   (i32.eqz
    (get_local $1)
   )
   ;;@ ~lib/string.ts:75:24
   (set_local $1
    ;;@ ~lib/string.ts:75:32
    (i32.const 188)
   )
  )
  ;;@ ~lib/string.ts:79:4
  (if
   (i32.eqz
    ;;@ ~lib/string.ts:78:4
    (tee_local $2
     ;;@ ~lib/string.ts:78:24
     (i32.add
      ;;@ ~lib/string.ts:76:4
      (tee_local $3
       ;;@ ~lib/string.ts:76:25
       (i32.load
        (get_local $0)
       )
      )
      ;;@ ~lib/string.ts:77:4
      (tee_local $4
       ;;@ ~lib/string.ts:77:26
       (i32.load
        (get_local $1)
       )
      )
     )
    )
   )
   ;;@ ~lib/string.ts:79:28
   (return
    (i32.const 8)
   )
  )
  ;;@ ~lib/string.ts:82:4
  (call $~lib/memory/move_memory
   (tee_local $5
    ;;@ ~lib/string.ts:83:6
    (i32.add
     ;;@ ~lib/string.ts:80:4
     (tee_local $2
      ;;@ ~lib/string.ts:80:14
      (call $node_modules/assemblyscript/std/assembly/internal/string/allocate
       (get_local $2)
      )
     )
     ;;@ ~lib/string.ts:83:31
     (i32.const 4)
    )
   )
   ;;@ ~lib/string.ts:84:6
   (i32.add
    (get_local $0)
    ;;@ ~lib/string.ts:84:32
    (i32.const 4)
   )
   (tee_local $0
    ;;@ ~lib/string.ts:85:6
    (i32.shl
     (get_local $3)
     ;;@ ~lib/string.ts:85:17
     (i32.const 1)
    )
   )
  )
  ;;@ ~lib/string.ts:88:4
  (call $~lib/memory/move_memory
   ;;@ ~lib/string.ts:89:6
   (i32.add
    (get_local $5)
    (get_local $0)
   )
   ;;@ ~lib/string.ts:90:6
   (i32.add
    (get_local $1)
    ;;@ ~lib/string.ts:90:33
    (i32.const 4)
   )
   ;;@ ~lib/string.ts:91:6
   (i32.shl
    (get_local $4)
    ;;@ ~lib/string.ts:91:18
    (i32.const 1)
   )
  )
  (get_local $2)
 )
 (func $contracts/utils/Name#to_string (; 36 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  ;;@ contracts/utils.ts:43:4
  (set_local $3
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
  ;;@ contracts/utils.ts:46:4
  (block $break|0
   ;;@ contracts/utils.ts:46:9
   (set_local $0
    ;;@ contracts/utils.ts:46:17
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     ;;@ contracts/utils.ts:46:20
     (i32.ge_s
      (get_local $0)
      ;;@ contracts/utils.ts:46:24
      (i32.const 13)
     )
    )
    ;;@ contracts/utils.ts:49:6
    (if
     (i32.and
      ;;@ contracts/utils.ts:48:6
      (tee_local $1
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
            (i32.eqz
             (get_local $0)
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
      (i32.const 65535)
     )
     ;;@ contracts/utils.ts:49:22
     (set_local $4
      ;;@ contracts/utils.ts:49:32
      (i32.const 1)
     )
    )
    ;;@ contracts/utils.ts:50:6
    (if
     (get_local $4)
     ;;@ contracts/utils.ts:52:8
     (i32.store16 offset=4
      ;;@ contracts/utils.ts:52:19
      (i32.add
       (get_local $3)
       ;;@ contracts/utils.ts:52:42
       (i32.shl
        ;;@ contracts/utils.ts:52:43
        (i32.sub
         ;;@ contracts/utils.ts:52:44
         (i32.const 12)
         (get_local $0)
        )
        ;;@ contracts/utils.ts:52:55
        (i32.const 1)
       )
      )
      (tee_local $1
       (block $__inlined_func$~lib/string/String#charCodeAt (result i32)
        (drop
         (br_if $__inlined_func$~lib/string/String#charCodeAt
          (i32.const -1)
          (i32.ge_u
           (tee_local $1
            ;;@ contracts/utils.ts:51:44
            (i32.shr_s
             (i32.shl
              (get_local $1)
              (i32.const 16)
             )
             (i32.const 16)
            )
           )
           (i32.load
            (i32.const 12)
           )
          )
         )
        )
        (i32.load16_u offset=4
         (i32.add
          (i32.shl
           (get_local $1)
           (i32.const 1)
          )
          (i32.const 12)
         )
        )
       )
      )
     )
    )
    ;;@ contracts/utils.ts:54:6
    (set_local $2
     (i64.shr_u
      (get_local $2)
      ;;@ contracts/utils.ts:54:14
      (if (result i64)
       (get_local $0)
       ;;@ contracts/utils.ts:54:28
       (i64.const 5)
       ;;@ contracts/utils.ts:54:24
       (i64.const 4)
      )
     )
    )
    ;;@ contracts/utils.ts:46:28
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $3)
 )
 (func $contracts/todolist/todo/Todo#to_string (; 37 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ contracts/todolist/todo.ts:36:8
  (i64.store
   ;;@ contracts/todolist/todo.ts:35:8
   (tee_local $1
    ;;@ contracts/todolist/todo.ts:35:22
    (call $contracts/utils/Name#constructor
     (i32.const 0)
     (i32.const 8)
    )
   )
   ;;@ contracts/todolist/todo.ts:36:24
   (i64.load offset=16
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:38:8
  (i64.store
   ;;@ contracts/todolist/todo.ts:37:8
   (tee_local $2
    ;;@ contracts/todolist/todo.ts:37:23
    (call $contracts/utils/Name#constructor
     (i32.const 0)
     ;;@ contracts/utils.ts:38:30
     (i32.const 8)
    )
   )
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
      (get_local $2)
     )
    )
    ;;@ contracts/todolist/todo.ts:39:73
    (i32.const 180)
   )
   ;;@ contracts/todolist/todo.ts:39:93
   (call $contracts/utils/Name#to_string
    (get_local $1)
   )
  )
 )
 (func $contracts/todolist/todo/TodoContract#update (; 38 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  ;;@ contracts/todolist/todo.ts:108:8
  (call $contracts/eoslib/require_auth
   ;;@ contracts/todolist/todo.ts:108:21
   (i64.load offset=16
    ;;@ contracts/todolist/todo.ts:107:8
    (tee_local $0
     ;;@ contracts/todolist/todo.ts:107:24
     (call $contracts/todolist/todo/TodoContract#getTodoByKey
      (get_local $0)
      (get_local $1)
     )
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:109:8
  (i32.store8 offset=12
   (get_local $0)
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
  )
  ;;@ contracts/todolist/todo.ts:110:8
  (set_local $2
   ;;@ contracts/todolist/todo.ts:110:22
   (call $contracts/todolist/todo/Todo#to_ds
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:111:12
  (call $contracts/eoslib/db_update_i64
   ;;@ contracts/todolist/todo.ts:111:26
   (i32.load offset=32
    (get_local $0)
   )
   ;;@ contracts/todolist/todo.ts:111:41
   (i64.load offset=16
    (get_local $0)
   )
   ;;@ contracts/todolist/todo.ts:111:55
   (i32.load offset=4
    (get_local $2)
   )
   ;;@ contracts/todolist/todo.ts:111:85
   (i32.load
    (get_local $2)
   )
  )
 )
 (func $contracts/todolist/todo/TodoContract#removeAll (; 39 ;) (type $iv) (param $0 i32)
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
  (loop $continue|0
   (if
    ;;@ contracts/todolist/todo.ts:94:15
    (i32.ge_s
     (get_local $1)
     ;;@ contracts/todolist/todo.ts:94:27
     (i32.const 0)
    )
    (block
     ;;@ contracts/todolist/todo.ts:96:12
     (set_local $1
      ;;@ contracts/todolist/todo.ts:96:27
      (call $contracts/eoslib/db_next_i64
       ;;@ contracts/todolist/todo.ts:95:12
       (tee_local $3
        (get_local $1)
       )
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
      (get_local $3)
     )
     ;;@ contracts/todolist/todo.ts:100:12
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
  ;;@ contracts/utils.ts:9:6
  (call $contracts/eoslib/prints
   ;;@ contracts/utils.ts:9:17
   (call $~lib/string/String#toUTF8
    (i32.const 256)
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
 (func $contracts/todolist/todo/TodoContract#assign (; 40 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  ;;@ contracts/todolist/todo.ts:122:8
  (call $contracts/eoslib/require_auth
   ;;@ contracts/todolist/todo.ts:122:21
   (i64.load offset=16
    ;;@ contracts/todolist/todo.ts:121:8
    (tee_local $0
     ;;@ contracts/todolist/todo.ts:121:24
     (call $contracts/todolist/todo/TodoContract#getTodoByKey
      (get_local $0)
      (get_local $1)
     )
    )
   )
  )
  ;;@ contracts/todolist/todo.ts:123:8
  (i64.store offset=24
   (get_local $0)
   (get_local $2)
  )
  ;;@ contracts/todolist/todo.ts:124:8
  (set_local $3
   ;;@ contracts/todolist/todo.ts:124:22
   (call $contracts/todolist/todo/Todo#to_ds
    (get_local $0)
   )
  )
  ;;@ contracts/todolist/todo.ts:125:12
  (call $contracts/eoslib/db_update_i64
   ;;@ contracts/todolist/todo.ts:125:26
   (i32.load offset=32
    (get_local $0)
   )
   ;;@ contracts/todolist/todo.ts:125:41
   (i64.load offset=16
    (get_local $0)
   )
   ;;@ contracts/todolist/todo.ts:125:55
   (i32.load offset=4
    (get_local $3)
   )
   ;;@ contracts/todolist/todo.ts:125:85
   (i32.load
    (get_local $3)
   )
  )
 )
 (func $contracts/todolist/todo/apply (; 41 ;) (type $IIIv) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  ;;@ contracts/todolist/todo.ts:144:4
  (set_local $3
   (call $contracts/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  ;;@ contracts/todolist/todo.ts:145:4
  (set_local $4
   ;;@ contracts/todolist/todo.ts:145:19
   (call $contracts/todolist/todo/TodoContract#constructor
    (i32.const 0)
    (get_local $0)
    (get_local $1)
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
   (block
    (set_local $5
     ;;@ contracts/todolist/todo.ts:147:23
     (call $contracts/datastream/DataStream#readString
      (get_local $3)
     )
    )
    (set_local $0
     (i64.load
      (i32.add
       (i32.load offset=4
        (get_local $3)
       )
       (i32.load
        (get_local $3)
       )
      )
     )
    )
    (i32.store
     (get_local $3)
     (i32.add
      (i32.load
       (get_local $3)
      )
      (i32.const 8)
     )
    )
    ;;@ contracts/todolist/todo.ts:146:28
    (call $contracts/todolist/todo/TodoContract#add
     (get_local $4)
     (get_local $5)
     (get_local $0)
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
    (call $contracts/eoslib/prints
     (call $~lib/string/String#toUTF8
      (call $contracts/todolist/todo/Todo#to_string
       (call $contracts/todolist/todo/TodoContract#getTodoByKey
        (get_local $4)
        ;;@ contracts/todolist/todo.ts:150:23
        (i64.extend_u/i32
         (call $contracts/datastream/DataStream#readVarint32
          (get_local $3)
         )
        )
       )
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
     (block
      (set_local $0
       (i64.load
        (i32.add
         (i32.load offset=4
          (get_local $3)
         )
         (i32.load
          (get_local $3)
         )
        )
       )
      )
      (i32.store
       (get_local $3)
       (i32.add
        (i32.load
         (get_local $3)
        )
        (i32.const 8)
       )
      )
      (set_local $5
       (i32.load8_u
        (i32.add
         (i32.load offset=4
          (get_local $3)
         )
         (i32.load
          (get_local $3)
         )
        )
       )
      )
      (i32.store
       (get_local $3)
       (i32.add
        (i32.load
         (get_local $3)
        )
        (i32.const 1)
       )
      )
      ;;@ contracts/todolist/todo.ts:152:36
      (call $contracts/todolist/todo/TodoContract#update
       (get_local $4)
       (get_local $0)
       (get_local $5)
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
      (block
       (set_local $0
        (i64.load
         (i32.add
          (i32.load offset=4
           (get_local $3)
          )
          (i32.load
           (get_local $3)
          )
         )
        )
       )
       (i32.store
        (get_local $3)
        (i32.add
         (i32.load
          (get_local $3)
         )
         (i32.const 8)
        )
       )
       (call $contracts/eoslib/require_auth
        (i64.load offset=16
         (tee_local $3
          (call $contracts/todolist/todo/TodoContract#getTodoByKey
           (get_local $4)
           (get_local $0)
          )
         )
        )
       )
       (call $contracts/eoslib/db_remove_i64
        (i32.load offset=32
         (get_local $3)
        )
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
        (block
         (set_local $0
          (i64.load
           (i32.add
            (i32.load offset=4
             (get_local $3)
            )
            (i32.load
             (get_local $3)
            )
           )
          )
         )
         (i32.store
          (get_local $3)
          (i32.add
           (i32.load
            (get_local $3)
           )
           (i32.const 8)
          )
         )
         (set_local $1
          (i64.load
           (i32.add
            (i32.load offset=4
             (get_local $3)
            )
            (i32.load
             (get_local $3)
            )
           )
          )
         )
         (i32.store
          (get_local $3)
          (i32.add
           (i32.load
            (get_local $3)
           )
           (i32.const 8)
          )
         )
         ;;@ contracts/todolist/todo.ts:161:36
         (call $contracts/todolist/todo/TodoContract#assign
          (get_local $4)
          (get_local $0)
          (get_local $1)
         )
        )
        ;;@ contracts/utils.ts:9:6
        (call $contracts/eoslib/prints
         ;;@ contracts/utils.ts:9:17
         (call $~lib/string/String#toUTF8
          (i32.const 292)
         )
        )
       )
      )
     )
    )
   )
  )
 )
 (func $start (; 42 ;) (type $v)
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
