class Borer < Formula
  desc "Reverse-engineering engine for AI agents: MCP server and CLI"
  homepage "https://github.com/imjustprism/borer"
  version "0.2.9"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.9/borer-v0.2.9-aarch64-apple-darwin.tar.gz"
      sha256 "e257113725d6367da9a2bda15ae76cbc7c6fbcae3eb6d57c05fd82536262dacc"
    end
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.9/borer-v0.2.9-x86_64-apple-darwin.tar.gz"
      sha256 "43674988bc3a453945de6e2eb9da93cb85361499e3631d35549a1ff41fe31826"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.9/borer-v0.2.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b09c031ce9642a7cdf937a5b860cf5313f854395aedbafa0e44797d31165495f"
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
