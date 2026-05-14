cask "codex-profile-switcher" do
  version "0.1.3"
  sha256 "eaf1f3a236e594f940430f132650056d81d9b3331d03afd31c266c85d49fe0c6"

  url "https://github.com/4LAU/codex-profile-switcher/releases/download/v0.1.3/CodexProfileSwitcher-#{version}.dmg"
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
