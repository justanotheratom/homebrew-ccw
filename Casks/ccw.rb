cask "ccw" do
  version "0.1.78"
  sha256 "cb0f6d60e47f0104631e28643ac2ebb359cbda374dcd2983813f03c4d6b797d9"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCW.dmg"
  name "CCW"
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  depends_on macos: ">= :sonoma"

  app "CCW.app"
  binary "#{appdir}/CCW.app/Contents/Resources/ccw", target: "ccw"

  zap trash: [
    "~/.ccw",
  ]
end
