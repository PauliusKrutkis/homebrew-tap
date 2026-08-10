cask "nod" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "910c1fad995c9826ffd14cef2c92b9cb4d020d8638045098b9539a171d540f6d",
         intel: "4c17720a898fa70c3660bcc84d77d72ac9c9ef72c90059eeea4ed452111b9e94"

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
