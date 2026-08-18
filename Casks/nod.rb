cask "nod" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "1aadf718e0f0fd326dd9421d27131c5d334ffce712c85eb5baf0eab7e984337c",
         intel: "de9e97d38fa0136c64735fab7f1030bc88313c7c46bc3e3f3fcaece320493aa8"

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
