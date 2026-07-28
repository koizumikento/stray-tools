class Okf < Formula
  desc "Offline command-line workbench for Open Knowledge Format bundles"
  homepage "https://github.com/koizumikento/okf-workbench"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.2.0/okf-cli-macos-aarch64.tar.gz"
      sha256 "8646b87e3deab663476ccd19f722677233a5663cd57c21cd34c9a3e54a152151"
    else
      url "https://github.com/koizumikento/okf-workbench/releases/download/v0.2.0/okf-cli-macos-x86_64.tar.gz"
      sha256 "b70e17d12571b2037a193da1a8e351661d41f65fc28a168373ef068424cd4daf"
    end
  end

  def install
    bin.install "okf"
    prefix.install "LICENSE.txt"
    pkgshare.install "RUST_THIRD_PARTY_NOTICES.md"
  end

  test do
    output = shell_output("#{bin}/okf version")
    assert_match "0.2.0", output
  end
end
