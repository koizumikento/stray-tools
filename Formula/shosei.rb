class Shosei < Formula
  desc "Rust CLI for Japanese publishing workflows"
  homepage "https://github.com/koizumikento/shosei"
  license "MIT"
  version "0.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.8/shosei-v0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "414404add657902022bac7be0289cca55ee603caeb9f2765e8477c658dc38ada"
    else
      url "https://github.com/koizumikento/shosei/releases/download/v0.2.8/shosei-v0.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "97f3622e28273f258e0bb980f94d2dce65041afd73df917fc5ba481979337851"
    end
  end

  def install
    bin.install "shosei"
    prefix.install "LICENSE"
    pkgshare.install "README.md"
  end

  test do
    output = shell_output("#{bin}/shosei --help")
    assert_match "shosei", output
  end
end
