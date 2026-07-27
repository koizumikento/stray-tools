class Okf < Formula
  desc "Offline command-line workbench for Open Knowledge Format bundles"
  homepage "https://github.com/koizumikento/okf-workbench"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.1.1/okf-cli-macos-aarch64.tar.gz"
      sha256 "c422dac883c53a41d03236a18dd41dc336ff8b0c03cec2d1ab151f19fc13f394"
    else
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.1.1/okf-cli-macos-x86_64.tar.gz"
      sha256 "7672d39dd8c3268014189ca6f3d0ae61633ff96bf37a946c3ef8bcd49394896f"
    end
  end

  def install
    bin.install "okf"
    prefix.install "LICENSE.txt"
    pkgshare.install "RUST_THIRD_PARTY_NOTICES.md"
  end

  test do
    output = shell_output("#{bin}/okf version")
    assert_match "0.1.1", output
  end
end
