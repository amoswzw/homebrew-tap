# Homebrew cask for InkStats, published to github.com/amoswzw/homebrew-tap (Casks/inkstats.rb)
# by .github/workflows/release.yml, which fills in `version` and `sha256` on every release.
# Users install with: brew install --cask amoswzw/tap/inkstats
cask "inkstats" do
  version "0.1.4"
  sha256 "25f09bbc276bdc4db44316c05de51541f529692318661cb6e3b30e3f353a06d1"

  url "https://github.com/amoswzw/InkStats/releases/download/v#{version}/InkStats-#{version}.zip"
  name "InkStats"
  name "墨计"
  desc "System monitor for the menu bar, drawn in ink"
  homepage "https://github.com/amoswzw/InkStats"

  depends_on macos: :sonoma

  app "InkStats.app"

  uninstall quit:     "dev.inkstats.InkStats",
            launchctl: "dev.inkstats.helper"

  zap trash: [
    "~/Library/Application Support/InkStats",
    "~/Library/Preferences/dev.inkstats.InkStats.plist",
  ]
end
