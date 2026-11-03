class Borer < Formula
  desc "Reverse-engineering engine for AI agents: MCP server and CLI"
  homepage "https://github.com/imjustprism/borer"
  version "0.2.7"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.7/borer-v0.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "ca372d5f6abbeb79dc176d061b9397a83a2b45ee128715f3a630c271328884c3"
    end
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.7/borer-v0.2.7-x86_64-apple-darwin.tar.gz"
      sha256 "e596ee3d21891bd8eb3c85bba2cec5c702ed744dfa922ea6646b1c3eb1337052"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.2.7/borer-v0.2.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6885a15e3d3a379ea1d250ad29625e398d43c247abfb4708236f8535b3303d7b"
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
