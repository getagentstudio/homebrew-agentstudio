cask "agent-studio" do
  version "0.0.111"
  sha256 "418a776f381c3c971271ab8f13a0a10f09ad90c4bef48d603ed25349b7783ba8"

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
