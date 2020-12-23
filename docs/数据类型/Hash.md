# Hash









### 使用案例


### 参考
- [Hash - 命令](/docs/命令/README.md#Hash)





## 实现原理

### 1. 结构
> 源码：`dict.h/dictht`

数组 + 链表作为存储实现，链地址法解决哈希冲突。

```c
typedef struct dictEntry {
    void *key;              // 键
    union {
        void *val;
        uint64_t u64;
        int64_t s64;
        double d;
    } v;                    // 值
    struct dictEntry *next; // 指向下个哈希表节点，形成链表
} dictEntry;

typedef struct dictht {
    dictEntry **table;      // 哈希表数组
    unsigned long size;     // 哈希表大小
    unsigned long sizemask; // 哈希表大小掩码，用于计算索引值，总是等于 size - 1
    unsigned long used;     // 该哈希表已有节点的数量
} dictht;

typedef struct dict {
    dictType *type;
    void *privdata;
    dictht ht[2];           // 内部有两个 dictht 结构
    long rehashidx;
    unsigned long iterators;
} dict;
```


### 2. 扩容/缩容 - 渐进式 rehash
大字典的扩容是比较耗时间的，需要重新申请新的数组，然后将旧字典所有链表中的元素重新挂接到新的数组下面，这是一个 O(n) 级别的操作，作为单线程的 Redis 很难承受这样耗时的过程，所以 Redis 使用 渐进式 rehash 小步搬迁。

渐进式 rehash 会在 rehash 的同时，保留新旧两个 hash 结构，查询时会同时查询两个 hash 结构，然后在后续的定时任务以及 hash 操作指令中，循序渐进的把旧字典的内容迁移到新字典中。当搬迁完成了，就会使用新的 hash 结构取而代之。