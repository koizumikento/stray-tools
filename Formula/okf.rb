class Okf < Formula
  desc "Offline command-line workbench for Open Knowledge Format bundles"
  homepage "https://github.com/koizumikento/okf-workbench"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.1.2/okf-cli-macos-aarch64.tar.gz"
      sha256 "ab2132a0cd44c43f7607722a863c52b4c41d707f1abb097ac42877b14f549b44"
    else
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.1.2/okf-cli-macos-x86_64.tar.gz"
      sha256 "f308574b550f7c712226f42e21613a662b21f26121c9179f58e78a12678fe6e2"
    end
  end

  def install
    bin.install "okf"
    prefix.install "LICENSE.txt"
    pkgshare.install "RUST_THIRD_PARTY_NOTICES.md"
  end

  test do
    output = shell_output("#{bin}/okf version")
    assert_match "0.1.2", output
  end
end
