# Plume Homebrew Tap

Plume is a native macOS text editor with SSH workspaces. This tap hosts the cask and signed application releases, not the application source code.

## Install

Requires macOS 26 or later. Once the first release is available:

```sh
brew tap stringer07/plume
brew install --cask stringer07/plume/plume-editor
```

## Uninstall

```sh
brew uninstall --cask stringer07/plume/plume-editor
```

To also remove local settings, caches, and recovery drafts, save your work first, then use `brew uninstall --cask --zap stringer07/plume/plume-editor` instead.
