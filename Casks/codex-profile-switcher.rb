cask "codex-profile-switcher" do
  version "0.1.5"
  sha256 "e09d62e7b188dab75af6908e3745b75b424c2bae330f2f16418d1e135eb4e6d8"

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
