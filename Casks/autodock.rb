cask 'autodock' do
  version '1.2.1'
  sha256 '447f63f41bc64656befaa4d9bbefa2ee0993daf08d36a247f89655bfc4ac1f12'

  url "https://github.com/ghall89/AutoDock/releases/download/v#{version}/AutoDock.zip"

  name 'AutoDock'
  desc 'Utility for automatically hiding and showing the MacOS Dock'
  homepage 'https://github.com/ghall89/AutoDock'

  depends_on macos: '>= :sequoia'

  app 'AutoDock.app'

  zap trash: [
    '~/Library/Preferences/com.ghall.dev.AutoDock.plist',
    '~/Library/Saved Application State/com.ghall.dev.AutoDock.savedState'
  ]
end
