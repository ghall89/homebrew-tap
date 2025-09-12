cask "keystash" do
  version "0.6.0"
  sha256 "2d5af13ad2c38c524a77d877fbd6bb3590641fd5364e8efa5ecf0971b612a4ad"

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
