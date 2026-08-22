# ymauray/homebrew-tap

[![Validate formulae](https://github.com/ymauray/homebrew-tap/actions/workflows/validate-formulas.yml/badge.svg)](https://github.com/ymauray/homebrew-tap/actions/workflows/validate-formulas.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Tap Homebrew pour les outils en ligne de commande maintenus par [@ymauray](https://github.com/ymauray).

## Installer le tap

Ajoutez le tap :

```sh
brew tap ymauray/tap
```

Installez une formule :

```sh
brew install <formula>
```

## Formules disponibles

| Formule | Description |
|---|---|
| `epubst` | Compilateur Markdown vers ePub3 |
| `excelst` | Génère des fichiers Excel à partir de sources `.exl` |
| `johannes` | Convertit des fichiers `.docx` vers Typst |
| `paige` | Génère des fichiers ePub |
| `scrubx` | Vérifie la validité de documents Word |

Par exemple :

```sh
brew install epubst
```

## Mises à jour des formules

Les mises à jour de formules sont créées automatiquement par les workflows de publication des dépôts sources. Les pull requests manuelles de mise à jour ne sont pas acceptées, car elles seraient écrasées lors de la prochaine publication.

## Validation

GitHub Actions valide les pull requests avec `brew style` et `brew audit` pour chaque formule de ce tap.
