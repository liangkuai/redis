# set

> 可用版本：>= 1.0.0

设置一个 string key。

- 如果 key 已经存在，直接覆盖原来的值，并且忽略原始类型。
- 当 `set` 执行成功之后，之前设置的过期时间都将失效。


### 语法

```bash
set key value [EX seconds] [PX milliseconds] [NX|XX]
```

#### 选项

从 2.6.12 版本开始，Redis 为 `set` 命令增加了一系列选项

- `EX seconds` ：设置 key 的过期时间，单位秒

- `PX milliseconds` ：设置 key 的过期时间，单位毫秒

- `NX` ：只有 key 不存在的时候才会设置 value

- `XX` – 只有 key 存在的时候才会设置 value

> `set` 命令加上选项完全可以取代 `setnx`、`setex`、`psetex` 命令。


### 返回值

返回被设置为 1 的 bit 数。

```bash
127.0.0.1:6379> set mykey "hello"
OK
```


### 参考

- [SET - redis.cn](http://www.redis.cn/commands/set.html)
- [Redis SET 命令 - redis.net.cn](https://www.redis.net.cn/order/3544.html)