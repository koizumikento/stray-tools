class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.5/shosei-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "968ffc6f82d038776e2758f8a80eef51a4c077264cd3c24d291700b4885bce4a"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.5/shosei-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "4431c687e3769ef96b4be6b569786288bfd3d995ab2a89af16f414facba79f4c"
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
