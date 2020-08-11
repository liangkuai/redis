# set/getset/mset/msetnx

## set

> 可用版本：>= 1.0.0

设置一个 string key。

- 如果 key 已经存在，直接覆盖原来的值，并且**忽略原始类型**。
- 当 `set` 执行成功之后，之前设置的过期时间将失效。

### 语法

```
set key value [EX seconds] [PX milliseconds] [NX|XX]
```

#### 选项

从 2.6.12 版本开始，Redis 为 `set` 命令增加了一系列选项

- `EX seconds` ：设置 key 的过期时间，单位秒

- `PX milliseconds` ：设置 key 的过期时间，单位毫秒

- `NX` ：只有 key 不存在的时候才会设置 value

- `XX` : 只有 key 存在的时候才会设置 value

> `set` 命令加上选项完全可以取代 `setnx`、`setex`、`psetex` 命令。

### 返回值

设置成功返回 OK，设置失败返回 `nil`。

```
127.0.0.1:6379> set mykey "hello"
OK
```

### 参考

- [SET - 官方](https://redis.io/commands/set)
- [SET - redis.cn](http://www.redis.cn/commands/set.html)


## getset

> 可用版本：>= 1.0.0

设置一个 string key，并返回原 value。如果 key 不是 string value，返回错误。

### 语法

```
getset key value
```

### 返回值

总是返回 OK。

```
127.0.0.1:6379> set mykey 2
OK

127.0.0.1:6379> getset mykey 0
"2"
```

### 参考

- [GETSET - 官方](https://redis.io/commands/getset)
- [GETSET - redis.cn](http://www.redis.cn/commands/getset.html)


## mset

> 可用版本：>= 1.0.1

设置多个 string key。

### 语法

```
mset key value [key value ...]
```

### 返回值

总是返回 OK。

```
127.0.0.1:6379> mset key1 "hello" key2 "world"
OK
```

### 参考

- [MSET - 官方](https://redis.io/commands/mset)
- [MSET - redis.cn](http://www.redis.cn/commands/mset.html)


## msetnx

> 可用版本：>= 1.0.1

设置多个 string key。**仅当所有给定的 key 都不存在时，才会设置。**

### 语法

```
msetnx key value [key value ...]
```

### 返回值

- 1：操作成功
- 0：未执行任何操作

```
127.0.0.1:6379> msetnx key1 "hello" key2 "there"
(integer) 1
```

### 参考

- [MSETNX - 官方](https://redis.io/commands/msetnx)
- [MSETNX - redis.cn](http://www.redis.cn/commands/msetnx.html)