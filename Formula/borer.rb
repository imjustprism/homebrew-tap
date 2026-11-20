class Borer < Formula
  desc "Blazing fast, Rust-based reverse engineering tool built for humans and AI"
  homepage "https://github.com/imjustprism/borer"
  version "0.3.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/imjustprism/borer/releases/download/v0.3.1/borer-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "b1c4a8a5e7de95128d76f6e8ab0f609edf81d89a548146f05a6d3cdc0ce4782c"
    end
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.3.1/borer-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "cf1ef06ce7160c292a73039c6df541b6fad3232c2ed06e613646c6efb377f208"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.3.1/borer-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3b7f894edf9703e6e3c128332a62c9acdb49d6e2ce9ceb2e1aab0fec3845d53"
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
