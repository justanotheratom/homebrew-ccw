cask "ccw" do
  version "0.1.63"
  sha256 "211e2914fc5f5515eb7f9f6a6c3ec78affddd263e2160137ac6c0b46948c93dd"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCW.dmg"
  name "CCW"
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  depends_on macos: ">= :sonoma"

  app "CCW.app"
  binary "#{appdir}/CCW.app/Contents/MacOS/ccw", target: "ccw"

  zap trash: [
    "~/.ccw",
  ]
end
