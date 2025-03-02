cask "autodock" do
  version "1.1.0"
  sha256 "cfb654594fad54e76f40893bde9b19d4e104fec10465a17adc908dfaf33a2f9e"

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
