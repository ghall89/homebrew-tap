cask "keystash" do
  version "0.7.0"
  sha256 "4764a99a7b0a9a390284600e563c0b8fb1cdd9f67c458df87cb92ef9a63acf93"

  url "https://github.com/ghall89/KeyStash/releases/download/v#{version}/KeyStash.zip"

  name "KeyStash"
  desc "Software license key manager"
  homepage "https://github.com/ghall89/KeyStash"

  depends_on macos: ">= :sonoma"

  app "KeyStash.app"

  zap trash: [
  	"~/Library/Preferences/com.ghall.dev.KeyStash.plist",
  	"~/Library/Saved Application State/com.ghall.dev.KeyStash.savedState"
  ]
end
