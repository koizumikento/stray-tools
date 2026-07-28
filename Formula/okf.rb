class Okf < Formula
  desc "Offline command-line workbench for Open Knowledge Format bundles"
  homepage "https://github.com/koizumikento/okf-workbench"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.2.1/okf-cli-macos-aarch64.tar.gz"
      sha256 "a867d343071d33243532fb9a36961e08d15f6a79ec82c88b8a45c9be3fd86b6f"
    else
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.2.1/okf-cli-macos-x86_64.tar.gz"
      sha256 "93b3f6b6f92dea43190e5a51a2978683cfe06b9e993a0d2f50465de50718f681"
    end
  end

  def install
    bin.install "okf"
    prefix.install "LICENSE.txt"
    pkgshare.install "RUST_THIRD_PARTY_NOTICES.md"
  end

  test do
    output = shell_output("#{bin}/okf version")
    assert_match "0.2.1", output
  end
end
