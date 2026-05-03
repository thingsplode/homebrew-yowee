cask "yowee" do
  version "1.1.0"
  sha256 "2c7a8bc0b2cdb68624ea90c0efb66a5554cf8aafb6c5b544d51a1131910bdf28"

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
