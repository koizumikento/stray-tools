class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.11/shosei-v0.2.11-aarch64-apple-darwin.tar.gz"
      sha256 "193f2edd6e85b12d4c35a449212f82a27ae6d83139d5d6e9fa52af9e73f6a5fb"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.11/shosei-v0.2.11-x86_64-apple-darwin.tar.gz"
      sha256 "463e1ef933dfaa45008d32dd09ea2ec791e62ad3158d766f9d03f5880793bf0c"
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
