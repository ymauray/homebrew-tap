# ymauray/homebrew-tap

[![Validate formulae](https://github.com/ymauray/homebrew-tap/actions/workflows/validate-formulas.yml/badge.svg)](https://github.com/ymauray/homebrew-tap/actions/workflows/validate-formulas.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Homebrew tap for the command-line tools maintained by [@ymauray](https://github.com/ymauray).

## Installation

Add the tap:

```sh
brew tap ymauray/tap
```

Install a formula:

```sh
brew install <formula>
```

## Available formulae

| Formula | Description |
|---|---|
| `epubst` | Markdown-to-ePub3 compiler |
| `excelst` | Generates Excel files from `.exl` source files |
| `johannes` | Converts `.docx` files to Typst |
| `paige` | Generates ePub files |
| `scrubx` | Checks the validity of Word documents |

For example:

```sh
brew install epubst
```

## Formula updates

Formula updates are created automatically by release workflows in their source repositories. Manual update pull requests are not accepted because they would be overwritten by the next release.

## Validation

GitHub Actions validates pull requests with `brew style` and `brew audit` for every formula in this tap.
