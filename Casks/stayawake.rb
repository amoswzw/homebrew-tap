cask "stayawake" do
  version "0.1.3"
  sha256 "4df482d8a327b0a9eefe18725c5a6ff5e325146ddec9386c94020812c79b63c5"

  url "https://github.com/amoswzw/stayawake/releases/download/v#{version}/stayawake-#{version}-macos.dmg"
  name "stayawake"
  desc "Menu-bar utility that prevents idle sleep during long-running work"
  homepage "https://github.com/amoswzw/stayawake"

  depends_on macos: :ventura

  app "stayawake.app"

  zap trash: "~/Library/Preferences/dev.stayawake.app.plist"
end
