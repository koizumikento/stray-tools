class Okf < Formula
  desc "Offline command-line workbench for Open Knowledge Format bundles"
  homepage "https://github.com/koizumikento/okf-workbench"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.4.2/okf-cli-macos-aarch64.tar.gz"
      sha256 "d507b74e7f022b5176525678288e1bf21171cebecb23086aadbb9d72f2e1256f"
    else
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.4.2/okf-cli-macos-x86_64.tar.gz"
      sha256 "d6f266ff4597878856ea92d350a7a9e7f9747a60dc939eb1cff26d3cdde17a73"
    end
  end

  def install
    bin.install "okf"
    prefix.install "LICENSE.txt"
    pkgshare.install "RUST_THIRD_PARTY_NOTICES.md"
  end

  test do
    output = shell_output("#{bin}/okf version")
    assert_match "0.4.2", output
  end
end
