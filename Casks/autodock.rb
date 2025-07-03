cask "autodock" do
  version "1.2.0"
  sha256 "442dadfd97f78645949d9f179cced19b94c74c2cf04bfea53a46396e39d2d7e8"

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
