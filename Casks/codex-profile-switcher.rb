cask "codex-profile-switcher" do
  version "0.1.4"
  sha256 "4b01106613c7e53332279a3b3e46d9523b65ecb7592995da9b692925b0269d60"

  url "https://github.com/4LAU/codex-profile-switcher/releases/download/v0.1.4/CodexProfileSwitcher-#{version}.dmg"
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
