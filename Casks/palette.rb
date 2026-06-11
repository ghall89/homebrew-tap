cask 'palette' do
  version '0.2.1-21'
  sha256 'd202479a86e4b0390d0a26b0dfffa746149a455648c4d520aa514e7557eed1c9'

  url "https://cdn.amore.computer/releases/com.ghalldev.Palette/#{version}/Palette.zip"

  name 'Palette'
  desc 'A universal command palette for your Mac'
  homepage 'https://codeberg.org/ghalldev/Palette'

  depends_on macos: :tahoe

  app 'Palette.app'

  zap trash: [
    '~/Library/Preferences/com.ghalldev.Palette.plist'
  ]
end
