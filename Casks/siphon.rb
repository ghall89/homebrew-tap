
cask "siphon" do
  version "1.0.0"
  sha256 "d8c68e0f3e28b6f70dd857d97e177bfd0791e52086ef530cc97193d6fcb170be"

  url "https://github.com/ghall89/Siphon/releases/download/v#{version}/Siphon.zip"

  name "Siphon"
  desc "GUI front-end for yt-dlp"
  homepage "https://github.com/ghall89/Siphon"

  depends_on macos: ">= :sonoma"
  depends_on formula: "yt-dlp"

  app "Siphon.app"

  zap trash: [
  	"~/Library/Preferences/com.ghall.dev.Siphon.plist",
  	"~/Library/Saved Application State/com.ghall.dev.Siphon.savedState"
  ]
end
