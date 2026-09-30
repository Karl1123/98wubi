# 将微软五笔切换成98五笔

默认情况下，微软五笔只支持86方案，此 repo 能做到在使用微软五笔的情况下直接用 98 方案，不使用其它第三方输入法。

```ps1
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
./Set-Wubi -Plan 98
```