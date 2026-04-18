class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.4/shosei-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "73856ed4a6959a8733117ca1e2c1c8d03ed619be30d00507ed77d050fc707f6e"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.4/shosei-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "1a2a4223907a191ff82a1dc9df91f4999381a08c02f258a713939cc4c7ea12dd"
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
