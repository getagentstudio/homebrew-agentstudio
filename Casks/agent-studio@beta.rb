cask "agent-studio@beta" do
  version "0.0.105-beta.75"
  sha256 "1e5fcbf91a9feb74b9d150b2ff7f77a82a36fef741d52f7baf53df6818995ad7"

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
