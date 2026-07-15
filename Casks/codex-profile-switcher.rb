cask "codex-profile-switcher" do
  version "0.5.10"
  sha256 "eb23816822e618e22c6638386de846b21e44f98ae3d2fb764e8b2f9ea99264fe"

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
