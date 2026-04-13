# 航空学报 LaTeX 模板（非官方）

LaTeX template (unofficial) for *Acta Aeronautica et Astronautica Sinica*.

本仓库是基于原项目 [Htallone/AAAS](https://github.com/Htallone/AAAS.git)
进行的修改版。原模板本身是根据《航空学报》Word 模板改写的非官方
LaTeX 模板，最终格式解释权仍归《航空学报》编辑部所有，本仓库仅
供写作和排版参考。


## 项目来源

- 上游仓库：<https://github.com/Htallone/AAAS.git>
- 模板性质：非官方模板
- 原始思路：基于《航空学报》Word 模板整理出 XeLaTeX 可编译版本


## 本仓库的修改内容

相对上游版本，本仓库主要做了以下调整：

- 修复新版 TeX Live / XeLaTeX 环境下的编译兼容性问题
- 将不兼容新版 LaTeX 内核的 `tabu` 表格改为 `tabularx`
- 清理 `xelatex` / `bibtex` 编译过程中的常见警告和噪声日志
- 增加长 URL 的自动断行支持，避免参考文献中的超长链接撑爆版面
- 调整 `aaas.cls` 中的字体回退、页眉高度和 `10.5pt` 类选项兼容性
- 补充本地 OT1 字体兼容文件，避免旧字体编码探测造成的日志污染
- 保留原始示例结构、图片资源和参考文献示例，方便继续套用


## 编译环境

当前版本已在以下环境验证通过：

- Windows
- TeX Live 2025
- XeLaTeX + BibTeX

如果你使用的是较老版本 TeX Live，一般也应当可以工作，但本仓库主
要针对较新的 LaTeX 内核做了兼容性修复。


## 编译方式

在项目根目录执行：

```bash
xelatex TempExample.tex
bibtex TempExample
xelatex TempExample.tex
xelatex TempExample.tex
```

最终生成：

```text
TempExample.pdf
```


## 文件说明

- `aaas.cls`：模板类文件
- `cite.sty`、`GB.cpx`：引用和中文支持相关文件
- `TempExample.tex`：正文示例
- `TempExample.bib`：参考文献示例
- `image/`：正文示例用图
- `Symbol/`：变量符号说明示例相关文件
- `OT1TimesNewRoman(0).fd`：为新版 XeLaTeX 环境补充的本地字体兼容文件


## 说明

- 本仓库不是官方模板，请以期刊最新投稿要求为准
- 如果期刊格式要求发生变化，请优先参考期刊官网和编辑部说明
- 本仓库更适合作为写作起点和排版参考，而不是格式权威来源


## 预览

![shot1](shot1.png)

![shot2](shot2.png)
