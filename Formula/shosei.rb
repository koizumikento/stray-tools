class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.1/shosei-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "5d4fa2265b18391cd0da06c5c79250e96a4825cfd49622961917639af137838f"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.1/shosei-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "70d6d2101204380f59cdaf8e7297a218c0b65f6f7282e9962dbdc01da8cf7a05"
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
