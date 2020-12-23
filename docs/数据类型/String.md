# String

Redis 中的 string 可以存储 3 种类型的值，
- 字节串（byte string）
- 整数
- 浮点数

Redis 中的 string 最大 512M。



### 使用案例
1. 分布式锁
2. 重置计数功能
3. 计数器


### 参考
- [String - 命令](/docs/命令/README.md#String)



## 实现原理

### 1. 结构
Redis 中的字符串称为「简单动态字符串」（SDS，Simple Dynamic String）。

> 源码：`sds.h/sdshdr`

#### 为什么要这么设计？
1. `sdshdr.len` 存储字符串长度，获取字符串长度的时间复杂度 `O(1)`；
2. `sdshdr.buf` 数组可动态扩展长度；
3. 二进制安全，所有 SDS API 都会以处理二进制的方式来处理存储在 `sdshdr.buf` 数组里的数据。

