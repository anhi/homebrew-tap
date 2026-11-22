# anhi/homebrew-tap

Personal Homebrew tap: casks for apps that are not in homebrew-cask (or whose
homebrew-cask version is unusable), consumed declaratively from my nix-darwin
config via `homebrew.taps` / `homebrew.casks`.

```sh
brew tap anhi/tap
brew install --cask floe
```

## Casks

| Cask | Why it lives here |
|------|-------------------|
| `floe` | [thaw-app/Floe](https://github.com/thaw-app/Floe), an open source macOS launcher. Not in homebrew-cask or nixpkgs. Updates itself via Sparkle, so the cask only bootstraps the first install. |

## Retiring a cask

When an app lands in homebrew-cask upstream, delete it here and point
`homebrew.casks` at the plain name instead.
