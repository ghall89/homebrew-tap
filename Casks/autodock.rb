cask 'autodock' do
  version '1.3.1'
  sha256 '07a31f7309a6111891d9099f2c0dd10a2a1ae107a0f84cf211fb107bc358ae67'

  url "https://github.com/ghall89/AutoDock/releases/download/v#{version}/AutoDock.dmg"

  name 'AutoDock'
  desc 'Utility for automatically hiding and showing the macOS Dock'
  homepage 'https://github.com/ghall89/AutoDock'

  depends_on macos: '>= :sequoia'

  app 'AutoDock.app'

  zap trash: [
    '~/Library/Preferences/com.ghall.dev.AutoDock.plist',
    '~/Library/Saved Application State/com.ghall.dev.AutoDock.savedState'
  ]
end
