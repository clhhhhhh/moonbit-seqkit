# moonbit-seqkit

`moonbit-seqkit` 是一个零依赖的 MoonBit 数值序列分析库，面向命令行工具、教学数据处理和轻量遥测聚合。它提供统计量、搜索、排序、窗口变换和基础数论工具，API 小而直接。

## 目标与边界

- 主要实现语言：MoonBit。
- 仅依赖 MoonBit 标准能力，不复制第三方代码。
- 核心路径：统计、序列变换、排序/搜索、数论辅助。
- `ponytail:` 已知简化：排序使用稳定易读的插入排序；数据规模很大时再增加 introsort。

## 安装

```bash
moon add moonbit_textkit/seqkit@0.1.0
```

## 使用

```moonbit
let values = [12, 5, 8, 5, 20]
let total = @seqkit.sum(values)
let ordered = @seqkit.insertion_sort(values)
```

运行仓库内示例：

```bash
moon check
moon test
moon run cmd/demo
```

## 可复现验收

CI 会执行格式检查、`moon check --deny-warn`、全目标构建和 `moon test --deny-warn`。发布前执行 `moon register`、`moon login`、`moon package --list`、`moon publish`。

## 许可证

MIT，见 [LICENSE](LICENSE)。
