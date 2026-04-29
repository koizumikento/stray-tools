class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.12/shosei-v0.2.12-aarch64-apple-darwin.tar.gz"
      sha256 "fb963f83e99b745b351fea96730d0d0594f637e2adf4bff5742a79cb1d916c9b"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.12/shosei-v0.2.12-x86_64-apple-darwin.tar.gz"
      sha256 "6b25349ea84e3d9237f88edc77909c61507851afc057fa9ed69edf1e344240f8"
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
