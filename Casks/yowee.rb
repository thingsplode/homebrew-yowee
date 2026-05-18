cask "yowee" do
  version "1.2.1"
  sha256 "4750ded91c47233ef1d8601065d4433b02ed5ec86ddecaa810f7e7671868a5ef"

  url "https://github.com/thingsplode/yowee/releases/download/v#{version}/yowee-#{version}.dmg"
  name "yowee"
  desc "Menu bar LLM pipeline — select text, press ⌥Space, get results"
  homepage "https://github.com/thingsplode/yowee"

  app "yowee.app"

  postflight do
    system_command "/usr/bin/open",
                   args: ["-a", "System Preferences",
                           "--args", "com.apple.preference.security"]
  end

  zap trash: [
    "~/.config/yowee",
  ]
end
