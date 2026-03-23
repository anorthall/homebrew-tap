cask "tairi" do
  version "0.9.0"
  sha256 "d0ee0aa9564474c9cc19c5f1d326bf3f6e2187b284ba8d59762b504533e531da"

  url "https://github.com/buftio/tairi/releases/download/v0.9.0/tairi-0.9.0-macos-arm64.dmg"
  name "tairi"
  desc "Minimal workspace app inspired by Niri's scrolling philosophy"
  homepage "https://github.com/buftio/tairi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "tairi.app"

  zap trash: [
    "~/Library/Logs/tairi",
    "~/Library/Preferences/org.tairi.app.plist",
  ]
end
