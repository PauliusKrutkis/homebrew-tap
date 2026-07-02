cask "nod" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "aa82ef858ee4ddc8dc765ce3811f079d103f0c92218257542e30f8ce26b90641",
         intel: "de3080260f5c51f9a547f3a92df1c216b648eb6dd89176cf7780e382d3971c78"

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
