# Homebrew cask for Inkshot, published to github.com/amoswzw/homebrew-tap (Casks/inkshot.rb)
# by .github/workflows/release.yml, which fills in `version` and `sha256` on every release.
# Users install with: brew install --cask amoswzw/tap/inkshot
cask "inkshot" do
  version "1.0.0"
  sha256 "b4920dd1074f4fd294a4ef47f9877750cac6619824b6b2933db4232dba10c065"

  url "https://github.com/amoswzw/Inkshot/releases/download/v#{version}/Inkshot-#{version}.zip"
  name "Inkshot"
  desc "Private, offline screenshots, annotation and screen recording"
  homepage "https://github.com/amoswzw/Inkshot"

  depends_on macos: :sonoma

  app "Inkshot.app"

  zap trash: [
    "~/Library/Application Support/Inkshot",
    "~/Library/Containers/com.amosw.inkshot",
    "~/Library/Preferences/com.amosw.inkshot.plist",
  ]
end
