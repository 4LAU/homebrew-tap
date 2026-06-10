cask "codex-profile-switcher" do
  version "0.3.0"
  sha256 "1fffa7ce54da23f58ae8bc03185da9f659aaed16584eed5ceac7a659761029e9"

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
