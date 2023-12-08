cask "questlogger" do
  version "0.2.2"
  sha256 "4eb4cb0affddf24482b76a1c70431e2f14d50036a67c9e72acf7b4789e15b893"

  url "https://github.com/ghall89/QuestLogger/releases/download/v#{version}/QuestLogger.zip"

  name "QuestLogger"
  desc "Video game backlog manager"
  homepage "https://github.com/ghall89/QuestLogger"

  depends_on macos: ">= :ventura"

  app "QuestLogger.app"

  zap trash: [
  	"~/Library/Preferences/com.ghall.dev.QuestLogger.plist",
  	"~/Library/Saved Application State/com.ghall.dev.QuestLogger.savedState"
  ]
end
