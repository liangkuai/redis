# 2. AOF

AOF（append-only file）持久化
与快照持久化相比，AOF 持久化的实时性更好，因此已成为主流的持久化方案。


### 1. 持久化方式
开启 AOF 持久化之后，每执行一条会更改 Redis 中的数据的命令，都会写入硬盘中的 AOF 文件末尾。

### 2. AOF 文件存储在哪？
- 命令写入 `appendfilename` 配置项指定的文件，默认文件名是 appendonly.aof；
- 和 RDB 文件一样，AOF 文件存储在 `dir` 配置指定的路径下。

```bash
# 默认配置
appendfilename "appendonly.aof"
dir ./
```

### 3. 启用配置
默认情况下 Redis 没有开启 AOF 方式的持久化，可以通过 `appendonly` 配置项开启：
```bash
appendonly yes
```

### 4. 持久化策略配置
```bash
appendfsync always		# 每次有数据修改发生时都会写入 AOF 文件，这样会严重降低 Redis 的速度
appendfsync everysec	# 每秒钟同步一次，显示地将多个写命令同步到硬盘
appendfsync no			# 让操作系统决定何时进行同步
```

#### 4.1 appendfsync always
可以实现将数据丢失减到最少，不过这种方式需要对硬盘进行大量的写入而且每次只写入一个命令，十分影响 Redis的 速度。另外使用固态硬盘的用户谨慎使用 `appendfsync always` 选项，因为这会明显降低固态硬盘的使用寿命。

#### 4.2 appendfsync everysec
为了兼顾数据和写入性能，可以考虑 `appendfsync everysec` 选项 ，让 Redis 每秒同步一次 AOF 文件，Redis 性能几乎没受到任何影响。而且这样即使出现系统崩溃，用户最多只会丢失一秒之内产生的数据。当硬盘忙于执行写入操作的时候，Redis 还会放慢自己的速度以便适应硬盘的最大写入速度。

#### 4.3 appendfsync no
选项一般不推荐，这种方案会使 Redis 丢失不定量的数据而且如果用户的硬盘处理写入操作的速度不够的话，那么当缓冲区被等待写入的数据填满时，Redis 的写入操作将被阻塞，这会导致 Redis 的请求速度变慢。


### 5. 缺点
AOF 虽然在某个角度可以将数据丢失降低到最小而且对性能影响也很小，但是极端的情况下，体积不断增大的 AOF 文件很可能会用完硬盘空间。另外，如果 AOF 文件太大，那么还原操作执行时间就可能会非常长。


### 6 改进
为了解决 AOF 文件太大的问题，用户可以向 Redis 发送 `bgrewriteaof` 命令 ，这个命令会通过移除 AOF 文件中的冗余命令，重写（rewrite）AOF 文件来减小 AOF 文件的大小。`bgrewriteaof` 命令和 `bgsave` 创建快照原理十分相似，所以 AOF 文件重写也需要用到子进程，这样会导致性能问题和内存占用问题，和快照持久化一样。更糟糕的是，如果不加以控制的话，AOF 文件的体积可能会比快照文件大好几倍。


### 7. AOF 重写
AOF 重写可以产生一个新的 AOF 文件，新的 AOF 文件和原有的 AOF 文件所保存的数据库状态一样，但体积更小。

#### 7.1 重写原理
AOF 重写并非对现有 AOF 文件进行任何读入、分析或者写入操作。

**原理就是创建一个子进程对内存进行遍历转换成一系列 Redis 的操作命令，序列化到一个新的 AOF 日志文件中。**

#### 7.2 执行过程
- 在执行 `bgrewriteaof` 命令时，Redis 会维护一个 AOF 重写缓冲区，该缓冲区会在子进程创建新 AOF 文件期间，记录服务器执行的所有写命令；
- 当子进程完成创建新 AOF 文件的工作之后，Redis 会将重写缓冲区中的所有内容追加到新 AOF 文件的末尾，使得新旧两个 AOF 文件所保存的数据库状态一致；
- 最后用新的 AOF 文件替换旧的 AOF 文件，完成 AOF 文件重写操作。

#### 7.3 策略配置
```bash
auto-aof-rewrite-percentage 100
auto-aof-rewrite-min-size 64mb
```

当启用了 AOF 持久化机制之后，当当前 AOF 文件的体积大于 64MB，且比上次重写之后的体积大了至少一倍的时候，Redis 将执行 bgrewriteaof 命令。
