cask "yowee" do
  version "1.0.0"
  sha256 "d47f3dedfe0377d696327deefc0202cfcad05388d9f057d3528d44643f02519a"

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
