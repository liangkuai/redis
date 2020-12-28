# 持久化

Redis 的数据全部存储在内存中，如果突然宕机，数据就会全部丢失，因此必须有一套机制来保证 Redis 的数据不会因为故障而丢失，这种机制就是 Redis 的持久化机制，它会将内存中的数据库状态存储到硬盘中。

主要是为了之后重用数据（比如重启机器之后恢复数据），或者是为了防止系统故障而将数据备份到一个远程位置。

Redis 和 Memcached 的主要区别之一就是 Redis 支持持久化。而且 Redis 提供两种不同的持久化方法来将数据存储到硬盘里。
1. 快照（snapshotting，RDB）
2. 只追加文件（append-only file，AOF）


### Redis 4.0 混合持久化

重启 Redis 时，我们很少使用 RDB 来恢复内存状态，因为会丢失大量数据。我们通常使用 AOF 日志重放，但是重放 AOF 日志性能相对 RDB 来说要慢很多，这样在 Redis 实例很大的情况下，启动需要花费很长的时间。

Redis 4.0 为了解决这个问题，带来了一个新的持久化选项——**混合持久化**。将 rdb 文件的内容和增量的 AOF 日志文件存在一起。***这里的 AOF 日志不再是全量的日志，而是自 RDB 持久化开始到持久化结束的这段时间发生的增量 AOF 日志，通常这部分 AOF 日志很小。***

于是在 Redis 重启的时候，可以先加载 RDB 的内容，然后再重放增量 AOF 日志就可以完全替代之前的 AOF 全量文件重放，重启效率因此大幅得到提升。


### 参考
- [Redis 持久化机制 - Snailclimb - GitHub](https://github.com/Snailclimb/JavaGuide/blob/master/docs/database/Redis/redis-all.md) / [Redis 持久化机制 - Snailclimb - Gitee](https://gitee.com/SnailClimb/JavaGuide/blob/master/docs/database/Redis/redis-all.md)
- [Redis(7)——持久化 - wmyskxz](https://www.wmyskxz.com/2020/03/13/redis-7-chi-jiu-hua-yi-wen-liao-jie/)