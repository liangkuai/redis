# Redis


#### 数据结构

- [ ] [String](./数据类型/String.md)
    - [ ] 实现原理
- [ ] List


#### 持久化

- [x] RDB
    - [ ] 原理
    - [ ] COW（Copy On Write) 机制
- [x] AOF
- [x] Redis 4.0 混合持久化


#### 问题

- [x] 缓存穿透
    - [ ] 布隆过滤器（Bloom Filter）
- [x] 缓存击穿
- [x] 缓存雪崩


#### 数据删除机制

- [ ] 过期策略
    - [ ] 定期删除
    - [ ] 惰性删除
- [ ] 内存淘汰策略


### 部署模式

- [ ] 单机模式
- [ ] 主从复制模式
- [ ] 哨兵模式（Sentinel）
- [ ] 集群模式（Cluster）



### [命令](./命令/README.md)

- [ ] 通用
- [ ] String
    - [ ] number
    - [ ] bit
- [ ] List
- [ ] Hash
- [ ] Set
- [ ] Zset
- [ ] 脚本