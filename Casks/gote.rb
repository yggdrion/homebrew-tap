cask "gote" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/yggdrion/gote/releases/download/v#{version}/gote-macos-#{Hardware::CPU.arch}.app.zip"
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
