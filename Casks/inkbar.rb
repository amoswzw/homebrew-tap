# Homebrew cask for InkBar, published to github.com/amoswzw/homebrew-tap (Casks/inkbar.rb)
# by .github/workflows/release.yml, which fills in `version` and `sha256` on every release.
# Users install with: brew install --cask amoswzw/tap/inkbar
cask "inkbar" do
  version "0.1.2"
  sha256 "c1a8e1cc9487e2a31846e9781eb5ace763da5c7dc7176e2cd3d9d3af435aef17"

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
