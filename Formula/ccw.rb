class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.43"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.43/ccw-darwin-arm64"
      sha256 "a1fd3624fbf17c311c6a66bda8d275e2b9eb2b8eab17b7bb07b14dfedb2824a1"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.43/ccw-darwin-amd64"
      sha256 "f5c2c2c44a40f041814cf253495fa681bdf7e9e69a969d684c5676ca94c09a43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.43/ccw-linux-arm64"
      sha256 "001820f793867f310aff4f95c4096e0ba3013f2892af69c05359113fd1e49de2"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.43/ccw-linux-amd64"
      sha256 "ecb5dfb8b8264069b090f4d61870e3ca069d52d3745a8d24a04c7ed62de793dc"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
