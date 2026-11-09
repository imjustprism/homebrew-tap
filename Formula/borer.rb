class Borer < Formula
  desc "Reverse-engineering engine for AI agents: MCP server and CLI"
  homepage "https://github.com/imjustprism/borer"
  version "0.2.12"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.12/borer-v0.2.12-aarch64-apple-darwin.tar.gz"
      sha256 "16a6522d28a0c818cc26b38bb71e5649093a60583f1e81485256ce22b2fb858f"
    end
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.12/borer-v0.2.12-x86_64-apple-darwin.tar.gz"
      sha256 "6b1b9d9af8f29e8d871dc1ded962db362ae86adc5a2188b3ea92b191a2a79785"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.12/borer-v0.2.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6357f72f43dea0c2a9e8817a088af6ca7de85080d9744cc345baf78a723ef11"
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
