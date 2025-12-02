cask 'autodock' do
  version '1.3.0'
  sha256 '0203e339c7b91fb120a89856bdd3392b46865ff74834e0f900b02fc18d8d4b78'

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
