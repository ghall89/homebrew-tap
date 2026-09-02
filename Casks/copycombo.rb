cask 'copycombo' do
  version :latest
  sha256 :no_check

  url "https://api.amore.computer/v1/apps/com.ghalldev.CopyCombo/download"

  name 'CopyCombo'
  desc 'Safari extension for copying the active URL'
  homepage 'https://codeberg.org/ghalldev/CopyCombo'

  depends_on macos: :sequoia

  app 'CopyCombo.app'

  zap trash: [
    '~/Library/Preferences/com.ghall.dev.CopyCombo.plist',
    '~/Library/Saved Application State/com.ghall.dev.CopyCombo.savedState'
  ]
end
