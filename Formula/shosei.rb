class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.15/shosei-v0.2.15-aarch64-apple-darwin.tar.gz"
      sha256 "38e573e8de8d47a6a13eb35be047e4136e26885773e248c3c5e860c12d3eea79"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.15/shosei-v0.2.15-x86_64-apple-darwin.tar.gz"
      sha256 "1749cff5dbf16a05a462f800f8cf48fb97909cbeadeb2815422333014b1532d8"
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
