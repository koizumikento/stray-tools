class Dataq < Formula
  desc "Rust-native CLI for deterministic data preprocessing"
  homepage "https://github.com/koizumikento/dataq"
  license "MIT"
  version "0.1.13"
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
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.13/dataq-v0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "d4d8d74dd835a5b06b6ca44a486c25374f58187e179dc47169ef133af704b486"
    else
      url "https://github.com/koizumikento/dataq/releases/download/v0.1.13/dataq-v0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "45f05789fa59a4a8bd02b2c12dd6e5dc34d8689f5388e65e744decac25371b42"
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
