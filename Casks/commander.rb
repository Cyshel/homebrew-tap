cask "commander" do
  version "0.26.3"
  sha256 "a4c43f5b9ab47c157708b2d708120187dea28eb5756f450cdb5354b517752dd3"

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
