# append

> 可用版本：>= 2.0.0

往一个 string key 的末尾追加字符串。如果 key 不存在，相当与 `set`。


### 语法

```
append key value
```


### 返回值

append 之后，string value 长度

```
127.0.0.1:6379> PPEND mykey "hello"
(integer) 5

127.0.0.1:6379> PPEND mykey " world"
(integer) 11
```


### 参考

- [APPEND - 官方](https://redis.io/commands/append)
- [APPEND - redis.cn](http://www.redis.cn/commands/append.html)