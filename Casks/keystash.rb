
cask "keystash" do
  version "0.1.0"
  sha256 "b5b07a2a8f78695c1bcde83196fbfe7d643b35e680be338c0496c280defedd99"

  url "https://github.com/ghall89/KeyStash/releases/download/v#{version}/KeyStash.zip"

  name "KeyStash"
  desc "Software license key manager"
  homepage "https://github.com/ghall89/KeyStash"

  depends_on macos: ">= :ventura"
  depends_on formula: "yt-dlp"

  app "KeyStash.app"

  zap trash: [
  	"~/Library/Preferences/com.ghall.dev.KeyStash.plist",
  	"~/Library/Saved Application State/com.ghall.dev.KeyStash.savedState"
  ]
end
