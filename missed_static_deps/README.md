# README

## 问题描述

当我基于多个 object target 组成一个 static / shared target 时，在 binary target 无法 add_deps 这个 static / shared target。

## 测试

```bash
xmake -bvD main
xmake run main
```
