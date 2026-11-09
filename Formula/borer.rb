class Borer < Formula
  desc "Reverse-engineering engine for AI agents: MCP server and CLI"
  homepage "https://github.com/imjustprism/borer"
  version "0.2.11"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.11/borer-v0.2.11-aarch64-apple-darwin.tar.gz"
      sha256 "d70978168f59970f1ceab97df1e112a7929115b2f9ba12f4dc741f89ba378a99"
    end
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.11/borer-v0.2.11-x86_64-apple-darwin.tar.gz"
      sha256 "a1c442018a52ac5f9bd5af182778624349e3474d55904efbe7cc2086c9d2e3a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.11/borer-v0.2.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf7a16a629091bdaf8b3ec1192f6f9e871a579dfa6afd03c13244f628a561358"
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
