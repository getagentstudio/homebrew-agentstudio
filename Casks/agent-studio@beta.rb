cask "agent-studio@beta" do
  version "0.0.107-beta.78"
  sha256 "92c1d1653860d3c50fde5999df3cb9f6a4667d92acd78201f4ce390b932542f2"

  url "https://github.com/getagentstudio/agentstudio/releases/download/v#{version}/AgentStudio-v#{version}-macos.zip"
  name "Agent Studio Beta"
  desc "Terminal application with Ghostty terminal emulator and project management"
  homepage "https://github.com/getagentstudio/agentstudio"

  depends_on macos: :tahoe

  app "AgentStudio Beta.app"

  zap trash: [
    "~/.agent-studio-b",
    "~/Library/Caches/com.agentstudio.app.beta",
    "~/Library/Preferences/com.agentstudio.app.beta.plist",
    "~/Library/Saved Application State/com.agentstudio.app.beta.savedState",
  ]
end
