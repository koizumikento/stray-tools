class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.9/shosei-v0.2.9-aarch64-apple-darwin.tar.gz"
      sha256 "af3824430d622fb7920267c279c5d9fb2b9fc5e4c790fc5784f7e0633de0a986"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.9/shosei-v0.2.9-x86_64-apple-darwin.tar.gz"
      sha256 "1231868c9c11739a51994c12c7c818dd4c6f1ed476a77592c4d37174a38d1970"
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
