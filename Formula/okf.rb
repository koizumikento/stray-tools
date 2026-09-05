class Okf < Formula
  desc "Offline command-line workbench for Open Knowledge Format bundles"
  homepage "https://github.com/koizumikento/okf-workbench"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.4.0/okf-cli-macos-aarch64.tar.gz"
      sha256 "470c73ac429e08ae9df9e2641279aa06d1c3b471168b92dd61b07dbac836eaa8"
    else
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.4.0/okf-cli-macos-x86_64.tar.gz"
      sha256 "e76c47e0cd1527f04abc83af848d29fa1c9db248272a125c42e54c538139f392"
    end
  end

  def install
    bin.install "okf"
    prefix.install "LICENSE.txt"
    pkgshare.install "RUST_THIRD_PARTY_NOTICES.md"
  end

  test do
    output = shell_output("#{bin}/okf version")
    assert_match "0.4.0", output
  end
end
