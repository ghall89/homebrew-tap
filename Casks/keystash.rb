cask "keystash" do
  version "0.3.2"
  sha256 "7226d9d73d7a8ee04e820f728af567bd80e0879cc987ca3df6f53f46f6007f63"

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
