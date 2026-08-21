cask "codex-profile-switcher" do
  version "0.5.19"
  sha256 "37ecab501747b5a704fcfcbb6d5f99d07a752752a9b9b06da3ef8daa1bfefc67"

  url "https://github.com/4LAU/codex-profile-switcher/releases/download/v#{version}/CodexProfileSwitcher-#{version}.dmg"
  name "Codex Profile Switcher"
  desc "Switch OpenAI Codex accounts from the macOS menu bar"
  homepage "https://github.com/4LAU/codex-profile-switcher"

  depends_on macos: :sonoma

  auto_updates true

  app "CodexProfileSwitcher.app"
  binary "#{appdir}/CodexProfileSwitcher.app/Contents/Helpers/codex-profile"

  zap trash: [
    "~/.codex-switcher",
    "~/Library/Logs/CodexProfileSwitcher",
    "~/Library/Preferences/com.4lau.codex-profile-switcher.plist",
  ]
end
