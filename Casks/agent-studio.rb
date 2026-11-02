cask "agent-studio" do
  version "0.0.124"
  sha256 "a2b73d15349bedbd71d2b62d6c4bb5788f00a8d9b0efcfba3a3437ffaa0d6983"

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
