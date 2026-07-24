class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.17/shosei-v0.2.17-aarch64-apple-darwin.tar.gz"
      sha256 "69c0dabac08ad3d2f534374ce0dfdef99e9469a0761f4366ff929258884e9eea"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.17/shosei-v0.2.17-x86_64-apple-darwin.tar.gz"
      sha256 "ec64e1a99ac9e0c56c934e8d6d2afa9e99377ec5cdb3eba299a1a6bbf8626331"
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
