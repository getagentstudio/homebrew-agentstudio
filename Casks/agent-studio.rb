cask "agent-studio" do
  version "0.0.117"
  sha256 "c326f40542053f92e2f0e134ceae966605af0de8895f682242a82c0e6874c048"

  url "https://github.com/getagentstudio/agentstudio/releases/download/v#{version}/AgentStudio-v#{version}-macos.zip"
  name "Agent Studio"
  desc "Terminal application with Ghostty terminal emulator and project management"
  homepage "https://github.com/getagentstudio/agentstudio"

  depends_on macos: :tahoe

  app "AgentStudio.app"

  zap trash: [
    "~/.agentstudio",
    "~/Library/Caches/com.agentstudio.app",
    "~/Library/Preferences/com.agentstudio.app.plist",
    "~/Library/Saved Application State/com.agentstudio.app.savedState",
  ]
end
