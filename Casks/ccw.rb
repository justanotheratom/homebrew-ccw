cask "ccw" do
  version "0.1.64"
  sha256 "c94e4fb31db51caeb05e738517a5813b694f41aee79e9829533d2b67ce96fd2a"

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
