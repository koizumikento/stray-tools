class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.0/shosei-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "dc1fb5bb7054bbac76a0068c793513604ab6d8ccc9411084688b53c4d878ff71"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.0/shosei-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f32a1acb39423ee3b7e1605c8410d4ce25dde047895627bf994fc3c88e663bd8"
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
