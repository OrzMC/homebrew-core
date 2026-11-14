# OrzMC Homebrew Tap

组织内应用与工具的 Homebrew 源（tap）。

```bash
brew tap orzmc/core
brew install rust-thanos        # 例：Rust 版世界优化 CLI
```

## 已发布

| Formula | 项目 | 说明 |
|---|---|---|
| `rust-thanos` | [OrzMC/OrzMCBackup](https://github.com/OrzMC/OrzMCBackup)（`rust/`） | Minecraft 世界优化/合并 CLI（Rust） |

## Formula 是怎么来的

**不要手工编辑 `Formula/*.rb`** —— 由各项目的发布流水线自动渲染并提交：

| 项目 | 流水线 | 模板 |
|---|---|---|
| `OrzMCBackup` | `.github/workflows/release-rust.yml` → `update-homebrew-tap` | `.github/homebrew_formula.rb.tpl` |

流水线读取组织凭据 `HOMEBREW_TAP_REPO`（形如 `OrzMC/homebrew-core`）与 `HOMEBREW_TAP_REPO_TOKEN`
（对该仓有 `contents: write` 的 PAT），因此组织内的其它项目可直接复用同一套凭据。

## 新增一个 Formula

1. 在项目仓库的 `.github/` 放 `homebrew_formula.rb.tpl`（占位符见模板文件头部注释）；
2. 发布流水线里设置 `HOMEBREW_TAP_REPO=` 当前仓库，`FORMULA_*` 变量由产品元数据填充；
3. 打 tag 发版，formula 会自动出现在 `Formula/` 下。
