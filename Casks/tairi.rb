cask "tairi" do
  version "0.9.0"
  sha256 "2c448ff1c4b55b26a178cb70fc5c3f41d14fad5c90f1c0d33222996f671fc409"

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
