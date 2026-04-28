class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.7/shosei-v0.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "6e20e2d6e0befc9d6241174995c54d4171d752a42cad02d2a894df76a1c6d966"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.7/shosei-v0.2.7-x86_64-apple-darwin.tar.gz"
      sha256 "f22f06f5d907cd9a3f5f042e8e1c996885c7b7b3b9e315902e3ae7396c071e9c"
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
