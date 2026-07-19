cask "nod" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "e4429b38ef031b48037e23b4774fa2b9ff25e05abd0ae2a6a8f5922a4f430ee0",
         intel: "b07125449414eeea810fe763c283ec18eeca28315e483951b3973fe0bc78f92d"

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
