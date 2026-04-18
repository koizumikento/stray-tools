class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.2/shosei-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "6466859745b2f5ca343d2ddd176639f07307625f1a00e3c9a328b1a36f54832c"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.2/shosei-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "e9a4a69b3b1892c13e4fc108e10148d01799a231d759e8ceb1b3f12e11334ea6"
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
