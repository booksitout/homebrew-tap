# booksitout/tap

Homebrew casks for booksitout apps.

## Claude Pet Ant

An ant colony on your desktop that mirrors your Claude Code sessions: one worker ant per live session, the queen showing your weekly usage.

```sh
brew install --cask booksitout/tap/claude-pet-ant
```

Installs to `~/Applications`. Open it once and click **Connect** to hook it up to Claude Code (sessions already open need `claude --continue`).

```sh
brew upgrade --cask claude-pet-ant
brew uninstall --cask claude-pet-ant        # also removes its Claude Code hooks
brew uninstall --zap --cask claude-pet-ant  # and its settings in ~/.config/claude-pet-ant
```

The app is signed with a Developer ID and notarized by Apple. The DMGs are attached to this repo's releases.
