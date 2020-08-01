# bitpos

> 可用版本：>= 2.8.7

对于 string key，返回第一个被设置为 1 或者 0 的 bit 位。

### 语法

```bash
bitpos key 0|1 [start] [end]
```


### 返回值

返回第一个被设置为 1 或者 0 的 bit 位。

```bash
127.0.0.1:6379> set key1 "\xff\xf0\x00"
(integer) 12

127.0.0.1:6379> bitpos key1 0
OK
```


### 参考

- [BITPOS - redis.cn](http://www.redis.cn/commands/bitpos.html)