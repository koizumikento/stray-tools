class Dataq < Formula
  desc "Rust-native CLI for deterministic data preprocessing"
  homepage "https://github.com/koizumikento/dataq"
  license "MIT"
  version "0.1.18"
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
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.18/dataq-v0.1.18-aarch64-apple-darwin.tar.gz"
      sha256 "6eb3e15366a56d8396407680ed7c7855d36d18b9fc89f360e71edc8fc6343caa"
    else
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.18/dataq-v0.1.18-x86_64-apple-darwin.tar.gz"
      sha256 "d22b01906d3d3a6e48eac2fb847475e75720edc7e3ad70e0fe225f6e2471ce13"
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
