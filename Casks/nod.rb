cask "nod" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "0a39c22d6ded64718315427a636a05df3ac79c9405da062f2efe71e468d284b9",
         intel: "c68776dad1751b468af1cf8745bab585e6cc95d369ee9f0d53c8f8bab980aed4"

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
