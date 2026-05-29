cask "codex-profile-switcher" do
  version "0.1.11"
  sha256 "4c16e4a71287eb21737e840456320a46a297b1d4b704b10623b17b4a6b1c4486"

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
