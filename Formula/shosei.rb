class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.1.0/shosei-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7c5a29dfcead44a2cfde63a883aedaba47188d430b74e475b9ee4c00f4e70927"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.1.0/shosei-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "1a7a92ea6b52be38da6b11479c6d38c19a0a21dd251bc6d33c52a9f33ef3729d"
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
