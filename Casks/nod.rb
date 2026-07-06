cask "nod" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "ee7a41a3e7d00470e622842ac64187723ce196244b4b1d648d2fe066326bcb1e",
         intel: "5afbbe34b31030f132d3e099a1921ac3c93a49b8eee25dedc3c506b213fcb703"

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
