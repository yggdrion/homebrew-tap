cask "gote" do
  version "1.4.2"
  
  on_intel do
    url "https://github.com/yggdrion/gote/releases/download/v#{version}/gote-macos-amd64.app.zip"
    sha256 "b4a4b6f4f2ca1732952fac4859719add980c541a0fc6e1103c9c1051f8c41bbe"
  end
  
  on_arm do
    url "https://github.com/yggdrion/gote/releases/download/v#{version}/gote-macos-arm64.app.zip"
    sha256 "cb4cf5ed5a6b02ebf8179688738900000a649dd6d0abc6aa5dddd1de165ed183"
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
