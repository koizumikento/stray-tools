class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.16/shosei-v0.2.16-aarch64-apple-darwin.tar.gz"
      sha256 "0cf0e7c9523b010007147e1a7a81d8a3842aa5e601913032cb6d9992f7d04828"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.16/shosei-v0.2.16-x86_64-apple-darwin.tar.gz"
      sha256 "210055b794be498b74f1b2652f11104630d863b3c1ddb0a9caeaf5b0e1b9f38d"
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
