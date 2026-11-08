class Borer < Formula
  desc "Reverse-engineering engine for AI agents: MCP server and CLI"
  homepage "https://github.com/imjustprism/borer"
  version "0.2.10"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.10/borer-v0.2.10-aarch64-apple-darwin.tar.gz"
      sha256 "deeb8eb391d26c3dc51c779c20eed61a13bdfa842b3d39b894391afa2ec4b9e9"
    end
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.10/borer-v0.2.10-x86_64-apple-darwin.tar.gz"
      sha256 "cca8602e590bed8487ba22721ff794e120571d37731a59ff846d28c82a754932"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.10/borer-v0.2.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48be15a10872b39dd44cd37d3f86284cc2a45ee962395bc2c5bf8090d1c9fed2"
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
