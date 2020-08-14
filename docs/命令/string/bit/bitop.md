# bitop

> 可用版本：>= 2.6.0

对于一个或多个 string key，进行位操作，并将结果保存到 destkey 上。

### 语法

```
bitop operation destkey key [key ...]
```

#### operation

`bitop` 命令支持 AND、OR、NOT、XOR 这四种操作。

- and，对一个或多个 key 求逻辑与，并将结果保存到 destkey

- or，对一个或多个 key 求逻辑或，并将结果保存到 destkey

- xor，对一个或多个 key 求逻辑异或，并将结果保存到 destkey

- not，对给定 key 求逻辑非，并将结果保存到 destkey


### 返回值

保存到 destkey 的字符串的长度，和输入 key 中最长的字符串长度相等。

```
127.0.0.1:6379> set key1 "foobar"
OK

127.0.0.1:6379> set key2 "abcdef"
OK

127.0.0.1:6379> bitop AND dest key1 key2
(integer) 6

127.0.0.1:6379> get dest
"`bc`ab"
```


### 参考

- [BITOP - 官方](https://redis.io/commands/bitop)
- [BITOP - redis.cn](http://www.redis.cn/commands/bitop.html)