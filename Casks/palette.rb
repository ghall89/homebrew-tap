cask 'palette' do
  version '0.1.0-10'
  sha256 '8f792e9ab7485ad554a9a34d59040acc398862a1660f46d0cefb1c4e0fa7a020'

  url "https://cdn.amore.computer/releases/com.ghalldev.Palette/#{version}/Palette.zip"

  name 'Palette'
  desc 'A universal command palette for your Mac'
  homepage 'https://codeberg.org/ghalldev/Palette'

  depends_on macos: '>= :tahoe'

  app 'Palette.app'

  zap trash: [
    '~/Library/Preferences/com.ghalldev.Palette.plist'
  ]
end
