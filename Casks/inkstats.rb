# Homebrew cask for InkStats, published to github.com/amoswzw/homebrew-tap (Casks/inkstats.rb)
# by .github/workflows/release.yml, which fills in `version` and `sha256` on every release.
# Users install with: brew install --cask amoswzw/tap/inkstats
cask "inkstats" do
  version "0.1.3"
  sha256 "f93e50de781367f436b55ee0af4ec1ee9be7d69f524cdd0f17a5ed231d7b7787"

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
