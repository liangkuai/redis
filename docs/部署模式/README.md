# 部署模式

### 单机模式

采用单个 Redis 节点部署。

单机的 Redis 能够承载的 QPS 大概在上万到几万不等，取决于操作的复杂性。

### 主从复制模式

1. 作用
2. 配置/启动
    - 配置项：`salveof`
    - Server 启动命令参数：`--slaveof <masterip> <masterport>`
    - Client 命令：`slaveof <masterip> <masterport>`
3. 断开主从链接
    - Client 命令：Client 命令：`slaveof no one`
4. 身份验证




### 哨兵模式（Sentinel）



### 集群模式（Cluster）




### 参考

- [Redis(9)——史上最强【集群】入门实践教程 - wmyskxz](https://www.wmyskxz.com/2020/03/17/redis-9-shi-shang-zui-qiang-ji-qun-ru-men-shi-jian-jiao-cheng/) / [Snailclimb - GitHub](https://github.com/Snailclimb/JavaGuide/blob/master/docs/database/Redis/redis-collection/Redis(9)%E2%80%94%E2%80%94%E9%9B%86%E7%BE%A4%E5%85%A5%E9%97%A8%E5%AE%9E%E8%B7%B5%E6%95%99%E7%A8%8B.md)