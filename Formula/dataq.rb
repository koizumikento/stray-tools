class Dataq < Formula
  desc "Rust-native CLI for deterministic data preprocessing"
  homepage "https://github.com/koizumikento/dataq"
  license "MIT"
  version "0.1.12"
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
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.12/dataq-v0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "f327cfe976d2b4dfe442991334d5335344bcae06a50f6016c020d098b97151ae"
    else
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.12/dataq-v0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "a3cc44d21754bc5b0a686ab7930ed0377aae7b00cc18e1853f8e33d1dcdda299"
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
