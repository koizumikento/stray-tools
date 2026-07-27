class Okf < Formula
  desc "Offline command-line workbench for Open Knowledge Format bundles"
  homepage "https://github.com/koizumikento/okf-workbench"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.1.0/okf-cli-macos-aarch64.tar.gz"
      sha256 "42ce4e4425ccb49beb18b51fa527717f24328c5518dea7c158d780a76f945c00"
    else
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.1.0/okf-cli-macos-x86_64.tar.gz"
      sha256 "acf36247d3689ef47a51376521802a47fddcfe76000fe704ba4eb66677c301d3"
    end
  end

  def install
    bin.install "okf"
    prefix.install "LICENSE.txt"
    pkgshare.install "RUST_THIRD_PARTY_NOTICES.md"
  end

  test do
    output = shell_output("#{bin}/okf version")
    assert_match "0.1.0", output
  end
end
