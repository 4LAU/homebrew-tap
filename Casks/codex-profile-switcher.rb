cask "codex-profile-switcher" do
  version "0.1.6"
  sha256 "64a5ceb950e99293b5b1a8c7beaf0db1766fec7902be410891b4f5dfa15b864d"

  url "https://github.com/4LAU/codex-profile-switcher/releases/download/v0.1.5/CodexProfileSwitcher-#{version}.dmg"
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
