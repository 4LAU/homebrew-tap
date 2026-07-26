# homebrew-tap

Homebrew tap for [4LAU](https://github.com/4LAU) projects.

## Install

```bash
brew tap 4lau/tap
```

## Packages

### Casks

| Cask | Description |
|---|---|
| `apisniff` | Capture browser API traffic and turn it into reusable specifications |
| `codex-profile-switcher` | Switch OpenAI Codex accounts from the macOS menu bar |

```bash
brew install --cask 4lau/tap/apisniff
brew install --cask 4lau/tap/codex-profile-switcher
```

## Update

```bash
brew update
brew upgrade --cask codex-profile-switcher
```

## Uninstall

```bash
brew uninstall --cask codex-profile-switcher

# Full cleanup (removes config, logs, preferences)
brew uninstall --cask --zap codex-profile-switcher
```
