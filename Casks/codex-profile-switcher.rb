cask "codex-profile-switcher" do
  version "0.1.2"
  sha256 "0bbb54a9d15d101ae2378c81c5aae751f1ed8ed607ef72d60d8d6f4c7e81e651"

  url "https://github.com/4LAU/codex-profile-switcher/releases/download/v0.1.2/CodexProfileSwitcher-#{version}.dmg"
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
