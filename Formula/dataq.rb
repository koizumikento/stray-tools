class Dataq < Formula
  desc "Rust-native CLI for deterministic data preprocessing"
  homepage "https://github.com/koizumikento/dataq"
  license "MIT"
  version "0.1.17"
  depends_on "jq"
  depends_on "yq"
  depends_on "miller"
  depends_on "csvkit"
  depends_on "jc"
  depends_on "qsv"
  depends_on "duckdb"
  depends_on "check-jsonschema"
  depends_on "pandoc"
  depends_on "xh"
  depends_on "ripgrep"
  depends_on "nb"
  depends_on "mdbook"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.17/dataq-v0.1.17-aarch64-apple-darwin.tar.gz"
      sha256 "3e39576725b151ea7e1479bcf608c3d0bc4fbd5d95ceca8ea7d31c7f011ccc1f"
    else
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.17/dataq-v0.1.17-x86_64-apple-darwin.tar.gz"
      sha256 "2c04f213138ae3cf38da843dda6fc29231d76d99fdb2cfa8ea772dd9f4511f0e"
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
