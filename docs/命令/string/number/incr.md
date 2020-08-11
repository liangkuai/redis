# incr/incrby/incrbyfloat


## incr

> 可用版本：>= 1.0.0

指定 string key 的 value +1

- 如果 key 不能存在，直接 set
- 如果不是 string key 或者 value 不能表示为一个整数，返回错误

### 语法

```
incr key
```

### 返回值

+1 后的值

```
127.0.0.1:6379> set mykey "10"
OK

127.0.0.1:6379> incr mykey
(integer) 11
```

### 参考

- [INCR - 官方](https://redis.io/commands/incr)
- [INCR - redis.cn](http://www.redis.cn/commands/incr.html)


## incrby

> 可用版本：>= 1.0.0

指定 string key 的 value 增加指定整数

- 如果 key 不能存在，直接 set
- 如果不是 string key 或者 value 不能表示为一个整数，返回错误

### 语法

```
incrby key increment
```

### 返回值

增加后的值

```
127.0.0.1:6379> set mykey "10"
OK

127.0.0.1:6379> incrby mykey 5
(integer) 15
```

### 参考

- [INCRBY - 官方](https://redis.io/commands/incrby)
- [INCRBY - redis.cn](http://www.redis.cn/commands/incrby.html)


## incrbyfloat

> 可用版本：>= 2.6.0

指定 string key 的 value 增加指定数字

- 如果 key 不能存在，直接 set
- 如果不是 string key 或者 value 不能表示为一个浮点数，返回错误

### 语法

```
incrbyfloat key increment
```

### 返回值

增加后的值，字符串形式返回

```
127.0.0.1:6379> set mykey "10"
OK

127.0.0.1:6379> incrbyfloat mykey "5.1"
"15.1"
```

### 参考

- [INCRBYFLOAT - 官方](https://redis.io/commands/incrbyfloat)
- [INCRBYFLOAT - redis.cn](http://www.redis.cn/commands/incrbyfloat.html)