cask "autodock" do
  version "1.0.1"
  sha256 "ee7d3abfbcbd9683a5a72bbd6fa0b43d30b4cd850a486e9320f602bbdfef9888"

  url "https://github.com/ghall89/AutoDock/releases/download/v#{version}/AutoDock.zip"

  name "AutoDock"
  desc "Utility for automatically hiding and showing the MacOS Dock"
  homepage "https://github.com/ghall89/AutoDock"

  depends_on macos: ">= :sequoia"

  app "AutoDock.app"

  zap trash: [
  	"~/Library/Preferences/com.ghall.dev.AutoDock.plist",
  	"~/Library/Saved Application State/com.ghall.dev.AutoDock.savedState"
  ]
end
