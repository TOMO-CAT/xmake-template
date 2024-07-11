# README

## 问题描述

`target:dep("xx"):get("syslinks")` 递归返回了 dep 依赖的 packages 的 syslinks。

## XMake 版本

```bash
xmake v2.9.2+HEAD.a298a7d88
```

## 复现方式

```bash
xmake f -c
```
