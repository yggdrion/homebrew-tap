cask "gote" do
  version "1.4.3"
  
  on_intel do
    url "https://github.com/yggdrion/gote/releases/download/v#{version}/gote-macos-amd64.app.zip"
    sha256 "7916a3c07c312bb97efd30ddac979a2b75668745379262a92e3cdc0112a9a5a6"
  end
  
  on_arm do
    url "https://github.com/yggdrion/gote/releases/download/v#{version}/gote-macos-arm64.app.zip"
    sha256 "d023038798908889edd6897a59c1221774f3b88cc748bbe485da7d2465162f17"
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
