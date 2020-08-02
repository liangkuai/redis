# sadd

> 可用版本：>= 1.0.0

往 set key 中添加元素。

### 语法

```bash
sadd key member [member ...]
```

### 返回值

新增元素个数（已存在的不算）

```bash
127.0.0.1:6379> sadd myset "hello" 5
(integer) 2
```


### 参考

- [SADD - 官方](https://redis.io/commands/sadd)
- [SADD - redis.cn](http://www.redis.cn/commands/sadd.html)