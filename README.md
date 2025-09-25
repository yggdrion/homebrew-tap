# Homebrew Tap for yggdrion

This is a [Homebrew](https://brew.sh) tap containing casks for applications developed by yggdrion.

## Installation

To add this tap and install applications:

```bash
# Add the tap
brew tap yggdrion/tap

# Install Gote
brew install --cask gote
```

## Available Casks

### Gote
A secure note-taking application built with Wails.

- **Description**: Password-protected encrypted note storage with real-time Markdown preview
- **Homepage**: https://github.com/yggdrion/gote
- **Installation**: `brew install --cask gote`

## Usage

After installation, you can:

- Launch Gote from Applications folder or Spotlight
- Update the app: `brew upgrade --cask gote`
- Uninstall the app: `brew uninstall --cask gote`

## Development

This tap follows Homebrew's cask formula conventions. Each cask is stored in the `Casks/` directory with a `.rb` extension.
