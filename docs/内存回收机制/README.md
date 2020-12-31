# 内存回收机制


### 1. 过期策略 = 惰性删除 + 定期删除

#### 1.1 惰性删除
> 在被查询时，检查 key 是否过期，过期再删除。

问题就是可能会有很多过期的 key 没及时删除，占用内存。

#### 1.2 定期删除
> Redis 默认是每隔 100ms 就随机抽取一些设置了过期时间的 key，检查其是否过期，过期就删除。


### 2. 内存淘汰策略

| 策略 | 含义 |
| :-- | :-- |
| `volatile-lru` | 从已设置过期时间的数据集 `server.db[i].expires` 中挑选最近最少使用的数据淘汰。 |
| `volatile-ttl` | 从已设置过期时间的数据集 `server.db[i].expires` 中挑选将要过期的数据淘汰。 |
| `volatile-random` | 从已设置过期时间的数据集 `server.db[i].expires` 中任意选择数据淘汰。 |
| `allkeys-lru` | 当内存不足以容纳新写入数据时，在键空间中，移除最近最少使用的 key。 |
| `allkeys-random` | 从数据集 `server.db[i].dict` 中任意选择数据淘汰。 |
| `no-eviction` | 禁止驱逐数据，也就是说当内存不足以容纳新写入数据时，新写入操作会报错。 |
| `volatile-lfu` | 从已设置过期时间的数据集 `server.db[i].expires` 中挑选最不经常使用的数据淘汰。（4.0 版本后） |
| `allkeys-lfu` | 当内存不足以容纳新写入数据时，在键空间中，移除最不经常使用的 key。（4.0 版本后） |

- lru，least recently used，最近最少使用
- lfu，least frequently used，最不经常使用

---
### FAQ

#### 1. 如何判断 key 过期？
Redis 通过一个叫「过期字典」的结构（可以看作是 hash 表）来保存 key 的过期时间，也就是 `redisDB.expires`。

```c
typedef struct redisDb {
    dict *dirct;        // 数据库键空间，保存所有键值对
    dict *expires;      // 过期字典，保存键的过期时间
    ...
}
```

`expires` 里也是键值对，
- key 和键空间里的 key 指向同一个键对象，
- value 保存的就是 key 所指向的键对象的过期时间（毫秒精度的 UNIX 时间戳）。

**判断过期就是通过查询过期字典，判断 key 存在且当前 UNIX 时间戳大于过期时间。**