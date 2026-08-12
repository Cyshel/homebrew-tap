cask "commander" do
  version "0.26.3"
  sha256 "e966ae19ca554fa4b3b83065b712e08f6b7bc5a741bd69b778c30223b071f850"

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
