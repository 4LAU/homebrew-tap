cask "codex-profile-switcher" do
  version "0.5.15"
  sha256 "794912058d82ca9747cde14627060a20c5eb1dc203bd5b90f4e63a1cfbafe8ac"

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
