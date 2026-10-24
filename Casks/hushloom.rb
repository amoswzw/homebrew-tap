cask "hushloom" do
  version "0.1.15"
  sha256 "19b78c1ee61a1c72b3f7b860c2f0ac1129732b562fc1ad8be01b4eff9fc736e4"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.15/Hushloom-v0.1.15.dmg"
  name "Hushloom"
  desc "macOS menu bar app for focus sessions, ambient soundscapes, and lightweight task tracking"
  homepage "https://github.com/amoswzw/Hushloom"

  depends_on macos: :ventura

  app "Hushloom.app"

  zap trash: [
    "~/Library/Caches/com.amoswzw.hushloom",
    "~/Library/Preferences/com.amoswzw.hushloom.plist",
  ]
end
