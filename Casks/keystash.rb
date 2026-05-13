cask 'keystash' do
  version '0.8.0-80'
  sha256 '57ccd36b5be85c75e100ca7ead84c9e4365ce2ddc585d78f9cfcd74bb5d86f30'

  url "https://cdn.amore.computer/releases/com.ghalldev.KeyStash/#{version}/KeyStash.zip"

  name 'KeyStash'
  desc 'Software license key manager'
  homepage 'https://github.com/ghall89/KeyStash'

  depends_on macos: '>= :sonoma'

  app 'KeyStash.app'

  zap trash: [
    '~/Library/Preferences/com.ghall.dev.KeyStash.plist',
    '~/Library/Saved Application State/com.ghall.dev.KeyStash.savedState'
  ]
end
