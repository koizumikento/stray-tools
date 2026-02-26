class Dataq < Formula
  desc "Rust-native CLI for deterministic data preprocessing"
  homepage "https://github.com/koizumikento/dataq"
  license "MIT"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.11/dataq-v0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "5f67a6bdba169aa28cb7969d05694787fbcc338488cffc6367e44597d83c3e94"
    else
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.11/dataq-v0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "50affc43d02f5e57f2e8a1855018d8aed32f09f5216cec545f86269596c7f045"
    end
  end

  def install
    bin.install "dataq"
    prefix.install "LICENSE"
    pkgshare.install "README.md"
  end

  test do
    output = shell_output("#{bin}/dataq --help")
    assert_match "dataq", output
  end
end
