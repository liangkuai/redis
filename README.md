# Redis

REmote DIctionary Server（远程字典服务器）

> 使用 ANSI C 编写的分布式内存数据库。


### 1. 为什么要用 Redis？
- 性能
- 并发

### 2. Redis 与 Memcached

#### 共同点
1. 基于内存，可以作为缓存
2. 性能高
3. 都有过期删除策略

#### 区别
| 区别 | Memcached | Redis |
| :--: | :-- | :-- |
| 数据类型 | 仅 k/v 类型 | 除了 k/v 类型，还有 list，set，zset，hash |
| 持久化 | 没有 | 有 |
| 灾难恢复 | 没有 | 持久化 |
| 过期删除策略 | 惰性删除 | 惰性删除 + 定期删除 |


### 3. 学习
- [笔记](/docs/README.md)
- issue