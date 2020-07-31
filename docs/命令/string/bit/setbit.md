# setbit

> 可用版本：>= 2.2.0

对于 string key，设置或清除指定 offset 上的 bit。


### 语法

```bash
setbit key offset 0|1
```

#### offset

0 <= offset < 2^32

> bitmap 本质上是 string value 的 key，而 Redis 中的 string 最大 512M；所以 bitmap 最多 2^32 - 1 位。

#### 耗时

一下设置一个 offset 较大的 key，Redis 要立即分配内存，可能会导致服务阻塞一会。（FYI：个人 PC 上一次性创建一个 2^32 bit 的 string key 需要 300ms 左右）


### 返回值

返回 offset 处原有的 bit 值

```bash
127.0.0.1:6379> setbit bitmap 65536 1
(integer) 0
```


### 参考

- [SETBIT](http://www.redis.cn/commands/setbit.html)