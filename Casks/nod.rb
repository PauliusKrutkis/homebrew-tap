cask "nod" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "edcedf9c45f6d85a35498e171b3a18ed3d71bd4f4d674fde8d4bd2651566a3a1",
         intel: "a99e46880a01a531909a127ffa0609d68625fb55774a666f404217779dc4b62a"

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
