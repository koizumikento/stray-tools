class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.10/shosei-v0.2.10-aarch64-apple-darwin.tar.gz"
      sha256 "ef4d4eeeb2c7688937564f85c5b46e27c4f5e0bc501915d4b2375ad5b933fe95"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.10/shosei-v0.2.10-x86_64-apple-darwin.tar.gz"
      sha256 "ef98129b70302776a7399ed9f970b7650cc58a48ca0d5d7413ea9954331c46e0"
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
