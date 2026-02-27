class Dataq < Formula
  desc "Rust-native CLI for deterministic data preprocessing"
  homepage "https://github.com/koizumikento/dataq"
  license "MIT"
  version "0.1.14"
  depends_on "jq"
  depends_on "yq"
  depends_on "miller"
  depends_on "pandoc"
  depends_on "xh"
  depends_on "ripgrep"
  depends_on "nb"
  depends_on "mdbook"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.14/dataq-v0.1.14-aarch64-apple-darwin.tar.gz"
      sha256 "4cba092b14f44a5e1ae6508f541b936aeae0041e84e327a85616a378c7048947"
    else
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.14/dataq-v0.1.14-x86_64-apple-darwin.tar.gz"
      sha256 "9b1c0e3deba66097906c65b0b9ed7cb6a509ef11d9428e26ffae8b5b664b6a5e"
    end
  end

  def install
    bin.install "dataq"
    prefix.install "LICENSE"
    pkgshare.install "README.md"
  end

  test do
    output = shell_output("#{bin}/dataq --help")
    assert_match "dataq", output
  end
end
