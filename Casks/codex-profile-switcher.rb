cask "codex-profile-switcher" do
  version "0.5.7"
  sha256 "f6247f3d81fe2d88e6614823da753f416f0fd6064ca0f2145c6d1f217dd8d904"

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
