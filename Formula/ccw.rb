class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.23/ccw-darwin-arm64"
      sha256 "1f0c9acd25ebb0772be92f310fdf7d8eafd06f17dde00545be3fc63387dffbad"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.23/ccw-darwin-amd64"
      sha256 "6afa778e382b3bd4599be9c028104bfe7c1e9a9db102714df69ef77363766604"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.23/ccw-linux-arm64"
      sha256 "37487ec6efcb72677bd561fb96cc89c0fa6274fb73124f0a48279940f79c8574"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.23/ccw-linux-amd64"
      sha256 "45e75575ef741611e8f19bb26377632cb1de287966803f98fa2f489092564397"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
