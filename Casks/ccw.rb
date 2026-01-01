cask "ccw" do
  version "0.1.67"
  sha256 "18db08e4c04b88f301b8ee6f51bdb6d92988b0965cd17c58c453852586d38c84"

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
