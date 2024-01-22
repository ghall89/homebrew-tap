
cask "siphon" do
  version "1.1.0"
  sha256 "8e6ba970853da07b4464c5deb38cb5d3e3bde6c99ca6c7e0725d36e14291d4e9"

  url "https://github.com/ghall89/Siphon/releases/download/v#{version}/Siphon.zip"

  name "Siphon"
  desc "GUI front-end for yt-dlp"
  homepage "https://github.com/ghall89/Siphon"

  depends_on macos: ">= :ventura"
  depends_on formula: "yt-dlp"

  app "Siphon.app"

  zap trash: [
  	"~/Library/Preferences/com.ghall.dev.Siphon.plist",
  	"~/Library/Saved Application State/com.ghall.dev.Siphon.savedState"
  ]
end
