cask "commander" do
  version "0.15.0"
  sha256 "fe9a72078dd2623074fc61dad0984866deb8b159e69107bdb231140eb7d7605a"

  url "https://releases.cyshel.com/commander/Commander-#{version}-universal.dmg"
  name "Commander"
  desc "Multi-agent developer desktop app for orchestrating Claude Code agents"
  homepage "https://commander.dev"

  livecheck do
    url "https://releases.cyshel.com/commander/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Commander.app"

  zap trash: [
    "~/Library/Application Support/Commander",
    "~/Library/Preferences/com.commander.app.plist",
    "~/Library/Caches/com.commander.app",
    "~/Library/Saved Application State/com.commander.app.savedState",
    "~/Library/Logs/Commander",
  ]
end
