class RustThanos < Formula
  desc "An efficient Minecraft Java world optimization tool to detect and remove unused chunks"
  homepage "https://github.com/OrzMC/OrzMCBackup"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OrzMC/OrzMCBackup/releases/download/rust-v0.0.4/rust-thanos-0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 ""
    else
      url "https://github.com/OrzMC/OrzMCBackup/releases/download/rust-v0.0.4/rust-thanos-0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OrzMC/OrzMCBackup/releases/download/rust-v0.0.4/rust-thanos-0.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 ""
    else
      url "https://github.com/OrzMC/OrzMCBackup/releases/download/rust-v0.0.4/rust-thanos-0.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 ""
    end
  end

  def install
bin.install "rust-thanos"
  end

  test do
    assert_match "OK", "OK"
  end
end
