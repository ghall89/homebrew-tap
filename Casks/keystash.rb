cask "keystash" do
  version "0.5.0"
  sha256 "8b25600451853521d41576aa58b1e0be3409232bc73349eeb8ac3bc2eca3acd3"

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
