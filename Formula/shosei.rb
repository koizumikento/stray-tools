class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.3/shosei-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "9bae66663018a6c33238389f6a98424e793054e64b321269ff5c83634f4a16b4"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.3/shosei-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "b22b835acb4139f77bce1f0dd6a5bc7257037d386a307a9ca68f7b77df03320b"
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
