cask "codex-profile-switcher" do
  version "0.2.1"
  sha256 "e6b7803ef4ff944cf9baf19bc286678d88d9bcef0525e0c49988ae68f89f6f7c"

  url "https://github.com/4LAU/codex-profile-switcher/releases/download/v0.2.1/CodexProfileSwitcher-#{version}.dmg"
  name "Codex Profile Switcher"
  desc "Switch OpenAI Codex accounts from the macOS menu bar"
  homepage "https://github.com/4LAU/codex-profile-switcher"

  depends_on macos: ">= :sonoma"

  app "CodexProfileSwitcher.app"
  binary "#{appdir}/CodexProfileSwitcher.app/Contents/Helpers/codex-profile"

  zap trash: [
    "~/.codex-switcher",
    "~/Library/Logs/CodexProfileSwitcher",
    "~/Library/Preferences/com.4lau.codex-profile-switcher.plist",
  ]
end
