cask "nod" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "44fb6309ed7a745a5eb7d3eb8f7317b0579dd86b15db7cd7c53d0add100244e7",
         intel: "5bd330bca0bc145c01c50caa26ddee87500d5c89193a405f0a8933d13bdb3b3e"

  url "https://github.com/PauliusKrutkis/nod/releases/download/v#{version}/Nod_#{version}_#{arch}.dmg"
  name "Nod"
  desc "Keyboard-first code review for GitHub and GitLab"
  homepage "https://github.com/PauliusKrutkis/nod"

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
