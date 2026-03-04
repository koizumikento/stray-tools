class Dataq < Formula
  desc "Rust-native CLI for deterministic data preprocessing"
  homepage "https://github.com/koizumikento/dataq"
  license "MIT"
  version "0.1.16"
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
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.16/dataq-v0.1.16-aarch64-apple-darwin.tar.gz"
      sha256 "135873bea82439449ceeeaa4c4833944f8481b1b11aaf0bda193cea151b1f4e1"
    else
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.16/dataq-v0.1.16-x86_64-apple-darwin.tar.gz"
      sha256 "5d07f249b7a0d3cea407d99c5d41f1d013d00f7148ab20e854929b34d47729bb"
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
