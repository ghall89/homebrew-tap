cask 'cornerstone' do
  version :latest
  sha256 :no_check

  url "https://api.amore.computer/v1/apps/com.ghalldev.Cornerstone/download"

  name 'Cornerstone'
  desc 'Customize windows on macOS Tahoe'
  homepage 'https://codeberg.org/ghalldev/Cornerstone'

  depends_on macos: :tahoe

  app 'Cornerstone.app'

  zap trash: [
    '~/Library/Preferences/com.ghalldev.Cornerstone.plist'
  ]
end
