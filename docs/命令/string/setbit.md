# setbit

> 可用版本：>= 2.2.0

对于 string value，设置或清除指定 offset 上的 bit。

#### 语法

```bash
setbit key offset 0|1
```

#### 返回值

返回 offset 处原有的 bit 值

```bash
127.0.0.1:6379> setbit bitmap 65536 1
(integer) 0
```