cask "nod" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "61532813a7cc99e061c1a00db7d2d7bc1a4748c4c42214c8ecfa09464344095f",
         intel: "c083c72d8dc0b78cb5e28dd1b208c1c3ad9ecc41a325d1b4b8593fc2bb65f560"

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
