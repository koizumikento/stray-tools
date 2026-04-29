class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.13/shosei-v0.2.13-aarch64-apple-darwin.tar.gz"
      sha256 "caf175e2647eaeb66f08aa3018ed6ce48ebe59e82f9e27ade044bc6957235e02"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.13/shosei-v0.2.13-x86_64-apple-darwin.tar.gz"
      sha256 "6f70aff9018fa7f21dc3f6ff3ef8b2c90c1272bc816c3dbb3609a6393bba7e6e"
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
