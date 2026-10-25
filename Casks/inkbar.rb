# Homebrew cask for InkBar, published to github.com/amoswzw/homebrew-tap (Casks/inkbar.rb)
# by .github/workflows/release.yml, which fills in `version` and `sha256` on every release.
# Users install with: brew install --cask amoswzw/tap/inkbar
cask "inkbar" do
  version "0.1.1"
  sha256 "6656917f6d31da51c8db84730b5387f2c84928d7e6847e9be1181c4d8d5662d4"

  url "https://github.com/amoswzw/InkBar/releases/download/v#{version}/InkBar-#{version}.zip"
  name "InkBar"
  name "墨栏"
  desc "Menu bar organizer drawn in ink"
  homepage "https://github.com/amoswzw/InkBar"

  depends_on macos: :sonoma

  app "InkBar.app"

  uninstall quit: "dev.inkbar.InkBar"

  zap trash: [
    "~/Library/Application Support/InkBar",
    "~/Library/Preferences/dev.inkbar.InkBar.plist",
  ]
end
