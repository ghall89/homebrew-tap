cask "autodock" do
  version "1.0.0"
  sha256 "a319c0cf125f36063922647828fc1c89f80ada9c996f8266a671e2a0fb2a9e71"

  url "https://github.com/ghall89/AutoDock/releases/download/v#{version}/AutoDock.zip"

  name "AutoDock"
  desc "Software license key manager"
  homepage "https://github.com/ghall89/AutoDock"

  depends_on macos: ">= :sequoia"

  app "AutoDock.app"

  zap trash: [
  	"~/Library/Preferences/com.ghall.dev.AutoDock.plist",
  	"~/Library/Saved Application State/com.ghall.dev.AutoDock.savedState"
  ]
end
