class Dataq < Formula
  desc "Rust-native CLI for deterministic data preprocessing"
  homepage "https://github.com/koizumikento/dataq"
  license "MIT"
  version "0.1.19"
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
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.19/dataq-v0.1.19-aarch64-apple-darwin.tar.gz"
      sha256 "0b7a4655de35ea72115ee6b0d2449f7c878e062d5151c45999148217af043ace"
    else
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.19/dataq-v0.1.19-x86_64-apple-darwin.tar.gz"
      sha256 "76e3a103f67e4a98a9e4726cd89df8dcda456cee7853aa381ec6dc40a2ed5442"
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
