cask "codex-profile-switcher" do
  version "0.1.0"
  sha256 "519ea7c54c92515c46a4eb74420ae0231a4b3d5d6240167684fe547fe14bc00e"

  url "https://github.com/4LAU/codex-profile-switcher/releases/download/v0.1.0/CodexProfileSwitcher-#{version}.dmg"
  name "Codex Profile Switcher"
  desc "Switch OpenAI Codex accounts from the macOS menu bar"
  homepage "https://github.com/4LAU/codex-profile-switcher"

  depends_on macos: ">= :sonoma"

  app "CodexProfileSwitcher.app"
  binary "#{appdir}/CodexProfileSwitcher.app/Contents/Helpers/codex-profile"

  zap trash: [
    "~/.codex-switcher",
    "~/Library/Application Support/CodexProfileSwitcher",
    "~/Library/Caches/CodexProfileSwitcher",
    "~/Library/Logs/CodexProfileSwitcher",
    "~/Library/Preferences/com.4lau.codex-profile-switcher.plist",
    "~/Library/Saved Application State/com.4lau.codex-profile-switcher.savedState",
  ]
end
