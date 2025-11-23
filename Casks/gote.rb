cask "gote" do
  version "1.4.6"
  
  on_intel do
    url "https://github.com/yggdrion/gote/releases/download/v#{version}/gote-macos-amd64.app.zip"
    sha256 "9873a0deefb7a2604727595c4d4f9118c08f66bfd48f2ea72f2e3a627287b844"
  end
  
  on_arm do
    url "https://github.com/yggdrion/gote/releases/download/v#{version}/gote-macos-arm64.app.zip"
    sha256 "ef019848de64b0d8040ac5377837b150dea20aaf1b1ac34a84e9967deb4fdaea"
  end
  
  name "Gote"
  desc "Secure note-taking application built with Wails"
  homepage "https://github.com/yggdrion/gote"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "gote.app"

  zap trash: [
    "~/Library/Application Support/gote",
    "~/Library/Caches/gote",
    "~/Library/Logs/gote",
    "~/Library/Preferences/com.gote.plist",
    "~/Library/Saved Application State/com.gote.savedState",
  ]
end
