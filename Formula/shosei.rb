class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.5/shosei-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "633b5e6b68d5451bc9a358fcde3db40c119f9bf5a861a93f980277eac43e6825"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.5/shosei-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "3f84fdb31f3cdd01d0a4c9cd70f71f0083c30d426b9ce61632d96292ef3d562e"
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
