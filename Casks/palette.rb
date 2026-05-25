cask 'palette' do
  version '0.2.0-20'
  sha256 '188d9f48cd7ef49a60d4db873a11698e07aca9db0a8aac4bdea9352e22ac0d3e'

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
