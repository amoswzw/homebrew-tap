cask "fluxtty" do
  version "0.1.28"

  on_arm do
    url "https://github.com/amoswzw/fluxtty/releases/download/v#{version}/fluxtty_#{version}_aarch64.dmg"
    sha256 "87b9f3aaa9dde3640c352f1a244e37dd7b64ceb929e354031de93f7a999dfe5c"
  end

  on_intel do
    url "https://github.com/amoswzw/fluxtty/releases/download/v#{version}/fluxtty_#{version}_x86_64.dmg"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  name "fluxtty"
  desc "Multi-session developer workspace terminal"
  homepage "https://github.com/amoswzw/fluxtty"

  app "fluxtty.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-r", "-d", "com.apple.quarantine", "{{appdir}}/fluxtty.app"],
        writable_paths: ["{{appdir}}/fluxtty.app"]
  end
end
