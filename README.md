# 将微软五笔切换成98五笔

默认情况下，微软五笔只支持86方案，此 repo 能做到在使用微软五笔的情况下直接用 98 方案，不使用其它第三方输入法。

注意：
1. 请使用管理员方式运行 Powershell
2. 如果是 Windows Powershell 请先输入 `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`

启用 98 方案

```ps1
./Set-Wubi.ps1 -Plan 98
```

还原 86 方案

```ps1
./Set-Wubi.ps1 -Plan 86
```