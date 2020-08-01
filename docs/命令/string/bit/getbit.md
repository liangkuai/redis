# getbit

> 可用版本：>= 2.2.0

对于 string key，获取指定 offset 上的 bit。

### 语法

```bash
getbit key offset
```


### 返回值

返回 offset 处的 bit 值。

当 key 不存在，或 offset 比字符串值的长度大，返回 0。

```bash
127.0.0.1:6379> getbit bitmap 65536
(integer) 0
```


### 参考

- [GETBIT - redis.cn](http://www.redis.cn/commands/getbit.html)