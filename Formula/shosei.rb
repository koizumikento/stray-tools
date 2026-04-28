class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.6/shosei-v0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "840fbe43dc14e88e244050afcaae90c2e067d6a277d92de6397086e7c511f1a6"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.6/shosei-v0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "b06fd56519b5b82817b8536c756c8145654fbcb65640df08e02495312e83d3de"
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
