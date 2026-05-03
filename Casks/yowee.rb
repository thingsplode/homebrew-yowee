cask "yowee" do
  version "1.0.0"
  sha256 "786f2ebe67ec9a2e1bcc24b9a153a0d4e4775921bb0158f2b2781e0e72851064"

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
