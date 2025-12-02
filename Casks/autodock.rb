cask 'autodock' do
  version '1.3.0'
  sha256 'ca630b1224a3231c728ebc2784073dedfd6bb58230ade439acb9b333286661a4'

  url "https://github.com/ghall89/AutoDock/releases/download/v#{version}/AutoDock.dmg"

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
