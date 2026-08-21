cask "codex-profile-switcher" do
  version "0.5.20"
  sha256 "784eaff3fd404ccbd3ab67f963807a0bfe032b500c26d07697a43382fe0391de"

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
