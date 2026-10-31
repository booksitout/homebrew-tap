cask "claude-pet-ant" do
  version "0.1.2"
  sha256 "b9cdecb58322bb00c7e5521f8e6dfd6ead19098370b91924939ae563b7cb2493"

  url "https://github.com/booksitout/homebrew-tap/releases/download/claude-pet-ant-v#{version}/claude-pet-ant.dmg"
  name "Claude Pet Ant"
  desc "Desktop ant colony that mirrors your Claude Code sessions"
  homepage "https://github.com/booksitout/homebrew-tap"

  depends_on macos: ">= :ventura"

  app "Claude Pet Ant.app", target: "~/Applications/Claude Pet Ant.app"
  binary "~/Applications/Claude Pet Ant.app/Contents/MacOS/claude-pet-ant"

  # removes its Claude Code hooks and status line, which would otherwise point at a deleted app
  uninstall_preflight do
    system_command "#{Dir.home}/Applications/Claude Pet Ant.app/Contents/MacOS/claude-pet-ant",
                   args:         ["uninstall"],
                   must_succeed: false
  end

  uninstall launchctl: "com.jinkyumpark.claude-pet-ant",
            quit:      "com.jinkyumpark.claude-pet-ant"

  zap trash: "~/.config/claude-pet-ant"
end
