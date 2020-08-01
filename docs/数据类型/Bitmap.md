# Bitmap

### 大小

bitmap 本质上是 string value 的 key，而 Redis 中的 string 最大 512M；所以 bitmap 最多 2^32 - 1 位。





### 使用案例

1. 签到

    即使运行 10 年，占用的空间也只是每个用户 10*365 bit，也就是每个用户 456 B。

2. 统计活跃用户数


### 参考

- [SETBIT - redis.cn](http://www.redis.cn/commands/setbit.html)