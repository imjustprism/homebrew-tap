class Borer < Formula
  desc "Reverse-engineering engine for AI agents: MCP server and CLI"
  homepage "https://github.com/imjustprism/borer"
  version "0.2.6"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.6/borer-v0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "39aa76c140debdb987a1dac00ba0fe2b57b01685742bb48fd291b52566c73ff4"
    end
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.6/borer-v0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "50475ed081edf8af77d8dd636ecea23812a0b9d9d15b556fda7565f79b8f3061"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.6/borer-v0.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91ffc761cc7cea520ec6787529755d75f12acb1a41c394dd55a80df1f844c1a5"
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
