cask "gote" do
  version "1.4.1"
  
  on_intel do
    url "https://github.com/yggdrion/gote/releases/download/v#{version}/gote-macos-amd64.app.zip"
    sha256 "68c07d9c9f326bef23fde72ccae82579967f7ffae0f775ef59d30be199e85a93"
  end
  
  on_arm do
    url "https://github.com/yggdrion/gote/releases/download/v#{version}/gote-macos-arm64.app.zip"
    sha256 "74a6467c489188cc5aa9be187d667edc228dc596f866efa11fd544e93b0efdb3"
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
