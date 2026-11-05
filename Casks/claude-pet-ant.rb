cask "claude-pet-ant" do
  version "0.1.19"
  sha256 "12ae73f7fd7d83efe162aa0e278211da52ed9950c10966c5f254c315e85a9d87"

  url "https://github.com/booksitout/homebrew-tap/releases/download/claude-pet-ant-v#{version}/claude-pet-ant.dmg"
  name "Claude Pet Ant"
  desc "Desktop ant colony that mirrors your Claude Code sessions"
  homepage "https://github.com/booksitout/homebrew-tap"

  depends_on macos: :ventura

  app "Claude Pet Ant.app"
  binary "#{appdir}/Claude Pet Ant.app/Contents/MacOS/claude-pet-ant"

  # also runs on every upgrade, so only quit; the login agent restarts the new version
  uninstall quit: "com.jinkyumpark.claude-pet-ant"

  zap launchctl: "com.jinkyumpark.claude-pet-ant",
      script:    {
        executable:   "#{appdir}/Claude Pet Ant.app/Contents/MacOS/claude-pet-ant",
        args:         ["uninstall", "--keep-app"],
        must_succeed: false,
      },
      trash:     "~/.config/claude-pet-ant"
end
