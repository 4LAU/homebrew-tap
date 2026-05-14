cask "codex-profile-switcher" do
  version "0.1.1"
  sha256 "26e6dc06009f209422758fc119ab78455eff45d3429615b7b440e5daf7afd8ea"

  url "https://github.com/4LAU/codex-profile-switcher/releases/download/v0.1.1/CodexProfileSwitcher-#{version}.dmg"
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
