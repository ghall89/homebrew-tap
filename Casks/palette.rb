cask 'palette' do
  version :latest
  sha256 :no_check

  url "https://api.amore.computer/v1/apps/com.ghalldev.Palette/download"

  name 'Palette'
  desc 'A universal command palette for your Mac'
  homepage 'https://codeberg.org/ghalldev/Palette'

  depends_on macos: :tahoe

  app 'Palette.app'

  zap trash: [
    '~/Library/Preferences/com.ghalldev.Palette.plist'
  ]
end
