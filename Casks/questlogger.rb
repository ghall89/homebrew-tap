cask "questlogger" do
  version "0.2.1"
  sha256 "3f093c6cf8b8e425f6a64a26837f068ea5215c42634ae8d26452c342bf2409a4"

  url "https://github.com/ghall89/QuestLogger/releases/download/v#{version}/QuestLogger.app.zip"

  name "QuestLogger"
  desc "Video game backlog manager"
  homepage "https://github.com/ghall89/QuestLogger"

  app "QuestLogger.app"

  zap trash: [
  	"~/Library/Preferences/com.ghall.dev.QuestLogger.plist",
  	"~/Library/Saved Application State/com.ghall.dev.QuestLogger.savedState"
  ]
end
