cask "ccw" do
  version "0.1.65"
  sha256 "2f025df768cc5c42ab11451145377abcd904639f61028fae9a94e4cd192fc839"

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
