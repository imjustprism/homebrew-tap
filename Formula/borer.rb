class Borer < Formula
  desc "Reverse-engineering engine for AI agents: MCP server and CLI"
  homepage "https://github.com/imjustprism/borer"
  version "0.2.8"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.8/borer-v0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "a46f2f00e07367534afe4acbbed1e75ecb120c6b1f8ecbd97380418cb292fb8c"
    end
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.8/borer-v0.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "20b57c22afdacbfc0010454e1ed28409430149dd03d2072d2d0ed2a8965b19fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.8/borer-v0.2.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9eb36aa72665330f097581f74757dd4d27250b046217277231611f6d94a66e7"
    end
  end

  def install
    bin.install "borer"
    prefix.install "THIRD-PARTY-LICENSES", "RUST-STD-COPYRIGHT.html"
  end

  test do
    assert_match "borer #{version}", shell_output("#{bin}/borer --version")
  end
end
