# Redis 事务

Redis 可以通过 `MULTI`、`EXEC`、`DISCARD` 和 `WATCH` 等命令来实现事务功能。

使用 `MULTI` 命令后可以输入多个命令，Redis 不会立即执行这些命令，而是将它们放到队列，当调用了 `EXEC` 命令将执行所有命令。


但是，Redis 的事务和我们平时理解的关系型数据库的事务不同。Redis 不支持 rollback，因而不满足原子性（而且不满足持久性）。