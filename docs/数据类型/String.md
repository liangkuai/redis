# String

Redis 中的 string 可以存储 3 种类型的值
- 字节串（byte string）
- 整数
- 浮点数

Redis 中的 string 最大 512M。



### 使用案例

1. 分布式锁
    - `set ex nx`

2. 重置计数功能
    - `getset`

3. 计数器
    - `incr`


### 参考

- [String - 命令](../命令/README.md#String)



## 实现原理

Redis 中的字符串是一种动态字符串（SDS，Simple Dynamic String）