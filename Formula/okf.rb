class Okf < Formula
  desc "Offline command-line workbench for Open Knowledge Format bundles"
  homepage "https://github.com/koizumikento/okf-workbench"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.4.1/okf-cli-macos-aarch64.tar.gz"
      sha256 "45759a090be65082d551b2c88420be87c993fdfc494859ef57f72b344c836e7f"
    else
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.4.1/okf-cli-macos-x86_64.tar.gz"
      sha256 "547aba86e1c59771577b362945c451e3ff3d9773c71008e3b35d7502b0482185"
    end
  end

  def install
    bin.install "okf"
    prefix.install "LICENSE.txt"
    pkgshare.install "RUST_THIRD_PARTY_NOTICES.md"
  end

  test do
    output = shell_output("#{bin}/okf version")
    assert_match "0.4.1", output
  end
end
