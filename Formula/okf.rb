class Okf < Formula
  desc "Offline command-line workbench for Open Knowledge Format bundles"
  homepage "https://github.com/koizumikento/okf-workbench"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.3.0/okf-cli-macos-aarch64.tar.gz"
      sha256 "e80717a7c664196107873cac8408b7260e099a892f00069d2b7549cf197e9a64"
    else
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.3.0/okf-cli-macos-x86_64.tar.gz"
      sha256 "566e46de059eb2f6b45650df791c71380c11961b78e11684829d44ca8aac2a3b"
    end
  end

  def install
    bin.install "okf"
    prefix.install "LICENSE.txt"
    pkgshare.install "RUST_THIRD_PARTY_NOTICES.md"
  end

  test do
    output = shell_output("#{bin}/okf version")
    assert_match "0.3.0", output
  end
end
