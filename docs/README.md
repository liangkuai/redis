# Redis

### 1. 数据结构
- [ ] [String](/docs/数据类型/String.md)
    - [ ] 实现原理
- [ ] [List](/docs/数据类型/List.md)
    - [ ] 实现原理
- [ ] [Hash](/docs/数据类型/Hash.md)
    - [ ] 实现原理
- [ ] [Set](/docs/数据类型/Set.md)
    - [ ] 实现原理
- [ ] [Zset](/docs/数据类型/Zset.md)
    - [ ] 实现原理
        - [ ] 跳表

### 内存回收机制
- [过期策略](/docs/内存回收机制/README.md)
    - 定期删除
    - 惰性删除
- [内存淘汰策略](/docs/内存回收机制/README.md)

### 持久化
- [intro](/docs/持久化/README.md)
- [RDB](/docs/持久化/RDB.md)
    - [ ] 原理
    - [ ] COW（Copy On Write) 机制
- [AOF](/docs/持久化/AOF.md)
- [Redis 4.0 混合持久化](/docs/持久化/README.md)

### Redis 事务
- [intro](/docs/事务/README.md)

### 部署模式
- [ ] 单机模式
- [ ] 主从复制模式
- [ ] 哨兵模式（Sentinel）
- [ ] 集群模式（Cluster）

### 问题
- [缓存穿透](/docs/问题/README.md#缓存穿透)
    - 布隆过滤器（Bloom Filter）
- [缓存击穿](/docs/问题/README.md#缓存击穿)
- [缓存雪崩](/docs/问题/README.md#缓存雪崩)
- [数据一致性问题](/docs/问题/README.md#数据一致性问题)

### 应用
- [x] [分布式锁](/docs/应用/分布式锁.md)
    - 普通实现
    - Redisson 实现
    - Redlock 算法
    - 对比
- [ ] 异步消息队列
- [ ] 延迟队列

### [命令](./命令/README.md)

- [ ] 通用
- [x] String
    - [x] number
    - [x] bit
- [ ] List
- [ ] Hash
- [ ] Set
- [ ] Zset
- [ ] 脚本