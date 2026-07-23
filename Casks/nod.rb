cask "nod" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "c1619a635b4763ad178125ed1666d88f35029005a41981eba96204fff9787f1c",
         intel: "e5a8f3e54578d4cce2dc608d3c026959b34c8b30a8aa7ecdce6fbbb161eecedb"

  url "https://github.com/PauliusKrutkis/pr-flow/releases/download/v#{version}/Nod_#{version}_#{arch}.dmg"
  name "Nod"
  desc "Keyboard-first code review for GitHub and GitLab"
  homepage "https://github.com/PauliusKrutkis/pr-flow"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Nod.app"

  zap trash: [
    "~/Library/Application Support/com.pauliuskrutkis.nod",
  ]
end
