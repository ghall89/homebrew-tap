cask 'keystash' do
  version :latest
  sha256 :no_check

  url "https://api.amore.computer/v1/apps/com.ghalldev.KeyStash/download"

  name 'KeyStash'
  desc 'Software license key manager'
  homepage 'https://codeberg.org/ghalldev/KeyStash'

  depends_on macos: :sonoma

  app 'KeyStash.app'

  zap trash: [
    '~/Library/Preferences/com.ghall.dev.KeyStash.plist',
    '~/Library/Saved Application State/com.ghall.dev.KeyStash.savedState'
  ]
end
