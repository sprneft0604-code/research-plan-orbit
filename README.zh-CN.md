# orbit-research-plan-template

[English README](README.md)

这是一个用于把模糊需求转化为有证据支撑的调研、架构判断和实施计划的 Orbit 模板。

当你希望 Agent 在开始实现之前，先调研 feature、refactor、API、framework 或
architecture 问题时，可以使用这个模板。它会让 worker 聚焦在 triage、证据收集、
方案比较、决策记录和分阶段计划上，避免过早进入代码修改。

## 快速开始

创建或进入一个 Harness runtime，然后从 GitHub 安装模板：

```bash
harness init
harness install https://github.com/sprneft0604-code/research-plan-orbit.git
orbit enter research-plan
```

查看已安装的 orbit 文件：

```bash
orbit files research-plan
orbit status
```

写入 research-plan record 后，运行最小记录检查：

```bash
bash tools/check-research-plan.sh
```

## 你会得到什么

- 一个用于单次 research-to-plan 工作的 `research-plan` orbit。
- 覆盖 triage、research、architecture comparison、planning 和 blocked handoff 的流程说明。
- 可复用的 research-plan record 模板和 ADR 风格决策模板。
- 一个轻量 done probe，用来检查 record 是否存在，并包含最低要求的章节。

## 这份模板参考了哪些经验

这个模板调研并吸收了多种 research、planning、verification 和 spec-first 的
Agent 工作流。GitHub star 数检查于 2026-04-12。

| Repository | Stars | 借鉴点 |
| --- | ---: | --- |
| [superpowers](https://github.com/obra/superpowers) | 147,851 | 严格的 TDD 核心：先有有效 RED，再写生产代码，最小 GREEN，最后重构。这个模板保留该核心，同时用更平和的方式处理 blocked 场景。 |
| [everything-claude-code](https://github.com/affaan-m/everything-claude-code) | 152,062 | 完整的 TDD agent/workflow 形态，强调证据和测试层级意识。这个模板借鉴其 evidence mindset，但不强制统一覆盖率数字。 |
| [spec-kit](https://github.com/github/spec-kit) | 87,242 | 展示了由项目策略和 spec 清晰度驱动 test-first 工作的方式。这个模板保留项目自定义测试纪律的空间。 |
| [get-shit-done](https://github.com/gsd-build/get-shit-done) | 51,071 | 强调验证和交接习惯。这个模板采用明确的 blocked/gap 记录，让失败或不确定的 TDD cycle 仍然有价值。 |
| [gstack](https://github.com/garrytan/gstack) | 70,314 | 回归测试和覆盖审计意识。这个模板通过要求 bug fix 证明 regression path 来体现这一点。 |
| [BMAD-METHOD](https://github.com/bmad-code-org/BMAD-METHOD) | 44,347 | 更宽的 QA、ATDD 和 traceability 视角。这个模板把它们视为升级路径，而不是每个小任务都必须满足的要求。 |
| [OpenSpec](https://github.com/Fission-AI/OpenSpec) | 39,231 | 面对不清晰行为时的 spec-first 纪律。这个模板要求 agent 在无法建立有效测试目标时停下来澄清。 |
| [oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode) | 27,919 | 紧凑的 TDD entry-mode 思路。这个模板保持安装后的 worker 入口简短，让 agent 能快速进入 test-first loop。 |

最终目标是：让实现前的判断更安全、更有证据，同时保持足够轻量，不把每个任务都变成漫长的架构项目。
