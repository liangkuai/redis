# List






### 使用案例
1. 队列
2. 栈


### 参考
- [List - 命令](../命令/README.md#List)



## 实现原理

### 1. 结构
> 源码：`adlist.h/listNode`

```c
// 链表节点
typedef struct listNode {
    struct listNode *prev;  // 前置节点
    struct listNode *next;  // 后置节点
    void *value;            // 节点的值
} listNode;

// 链表
typedef struct list {
    listNode *head;                     // 表头节点
    listNode *tail;                     // 表尾节点
    void *(*dup)(void *ptr);            // 节点值复制函数
    void (*free)(void *ptr);            // 节点值释放函数
    int (*match)(void *ptr, void *key); // 节点值对比函数
    unsigned long len;                  // 链表长度
} list;
```