cask "commander" do
  version "0.26.3"
  sha256 "efd7ddb6cb0c942c4d11422855ced7c00a597199aff46474f940cba8d181678c"

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
