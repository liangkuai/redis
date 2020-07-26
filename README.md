# Redis

REmote DIctionary Server（远程字典服务器）

使用 ANSI C 编写的分布式内存数据库。


### 为什么要用 Redis？（[issue#1](https://github.com/liangkuai/redis/issues/1)）

> Redis 有哪些作用？用于哪些场景？解决了什么样的问题？

#### 性能

#### 并发

在高并发量的情况下，所有请求直接访问数据库，对数据库的压力太大。利用 Redis 做一个缓冲，让请求先访问 Redis，而不是直接访问数据库。



### [使用 Redis 会产生哪些问题？如何解决？](./docs/问题)

- 缓存穿透
- 缓存击穿
- 缓存雪崩





### 如何学习 Redis？（[issue#2](https://github.com/liangkuai/redis/issues/2)）