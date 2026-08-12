cask "nod" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "f78bc98121044a24fb893b9765755d2ef52a8bdece519ca0d6d21d9194d6f6c9",
         intel: "fb1405c50cdb7dc3f6eda60f673abab436bc2afa0ee2c4d4cd29800d2582d947"

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
