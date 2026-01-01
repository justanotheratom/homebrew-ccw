cask "ccw" do
  version "0.1.68"
  sha256 "eb80c213e3a4e4f1f9b4d7e72eb010f6c74fc31d09bfe8839605d92636cec939"

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
