cask "fluxtty" do
  version "0.1.25"

  on_arm do
    url "https://github.com/amoswzw/fluxtty/releases/download/v#{version}/fluxtty_#{version}_aarch64.dmg"
    sha256 "5b06c202f2c68ddf63b0dad886f4ec4c96534744a5e6df729e0150234937a53f"
  end

  on_intel do
    url "https://github.com/amoswzw/fluxtty/releases/download/v#{version}/fluxtty_#{version}_x86_64.dmg"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  name "fluxtty"
  desc "Multi-session developer workspace terminal"
  homepage "https://github.com/amoswzw/fluxtty"

  app "fluxtty.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/fluxtty.app"]
  end
end
