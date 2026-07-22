cask "gote" do
  version "1.6.0"
  
  on_intel do
    url "https://github.com/yggdrion/gote/releases/download/v#{version}/gote-macos-amd64.app.zip"
    sha256 "f2454b732d1e781aab1e69ba70e79822c3e08783bb3cc217803baff527e778c8"
  end
  
  on_arm do
    url "https://github.com/yggdrion/gote/releases/download/v#{version}/gote-macos-arm64.app.zip"
    sha256 "b8f793ccb33d6dcc5ae2736e15f24f567183ea1e5d6d78274c18919ea4d4ebde"
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
