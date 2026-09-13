class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.18/shosei-v0.2.18-aarch64-apple-darwin.tar.gz"
      sha256 "8d7635b28d3cfcc5da389f4f1c2db74b1952d6354294605957c800f401c0007b"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.18/shosei-v0.2.18-x86_64-apple-darwin.tar.gz"
      sha256 "a25dc23eb4d63e673754917ca7b17cd41f125fedc479dfe44e275e2e1e799984"
    end
  end

  def install
    bin.install "shosei"
    prefix.install "LICENSE"
    pkgshare.install "README.md"
  end

  test do
    output = shell_output("#{bin}/shosei --help")
    assert_match "shosei", output
  end
end
