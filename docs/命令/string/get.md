# get/mget


## get

> 可用版本：>= 1.0.0

获取一个 string key 的 value。

### 语法

```
get key
```

### 返回值

string value。key 不存在返回 `nil`。

```
127.0.0.1:6379> get mykey "hello"
"hello"
```

### 参考

- [GET - 官方](https://redis.io/commands/get)
- [GET - redis.cn](http://www.redis.cn/commands/get.html)


## mget

> 可用版本：>= 1.0.0

获取多个 string key 的 value。

### 语法

```
get key [key ...]
```

### 返回值

string value 数组。key 不存在返回 `nil`。

```
127.0.0.1:6379> mset key1 "hello" key2 "world"
OK

127.0.0.1:6379> mget key1 key2 key3
1) "hello"
2) "world"
3) (nil)
```

### 参考

- [MGET - 官方](https://redis.io/commands/mget)
- [MGET - redis.cn](http://www.redis.cn/commands/mget.html)