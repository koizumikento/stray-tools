class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.14/shosei-v0.2.14-aarch64-apple-darwin.tar.gz"
      sha256 "1b28f64374dc2af7ddd8dd4d1f846604d7e8be3119e72b4b839cb0c9b8873fc8"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.14/shosei-v0.2.14-x86_64-apple-darwin.tar.gz"
      sha256 "8bb63924be3991e06d4679a01909c6894d82fbb22807c561e1b87431659a7605"
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
