class Borer < Formula
  desc "Blazing fast, Rust-based reverse engineering tool built for humans and AI"
  homepage "https://github.com/imjustprism/borer"
  version "0.3.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/imjustprism/borer/releases/download/v0.3.0/borer-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "0bf4ac8989a17a94c721fd37c86b11421a830fd31000ff8d7fbb242f49fcbaf7"
    end
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.3.0/borer-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "28cf3b505570f347e4fb9e1ea4954340c4b236460ca1e782226ea0808d473fd5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imjustprism/borer/releases/download/v0.3.0/borer-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1e6cfccc20784cfbdf169d9cf98eb4c0fa6156583cda38eaa77a069f1d89ade"
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
