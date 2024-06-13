# README.md

## 问题描述

> https://github.com/xmake-io/xmake/issues/5213

有一个场景是需要准备单测的数据，但是不希望所有单测文件都去运行，所以实现类似 `sync.Once` 的逻辑可以在每个 xmake 进程中只运行一次。

## 测试

```bash
xmkae -bvD --all
xmake test -v
```
