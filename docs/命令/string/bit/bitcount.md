# bitcount

> 可用版本：>= 2.6.0

对于 string key，统计被设置为 1 的 bit 数。可以用指定统计范围。

### 语法

```bash
bitcount key [start end]
```

### 返回值

返回被设置为 1 的 bit 数。

```bash
127.0.0.1:6379> bitcount bitmap 1 30
(integer) 2
```


### 参考

- [BITCOUNT](http://www.redis.cn/commands/bitcount.html)