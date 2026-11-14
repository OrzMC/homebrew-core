class RustThanos < Formula
  desc "An efficient Minecraft Java world optimization tool to detect and remove unused chunks"
  homepage "https://github.com/OrzMC/OrzMCBackup"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OrzMC/OrzMCBackup/releases/download/rust-v0.0.5/rust-thanos-0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "0a4e2c87d756356432a655e52930b8cb9fe5e9b4fbf17062542bac2e17712957"
    else
      url "https://github.com/OrzMC/OrzMCBackup/releases/download/rust-v0.0.5/rust-thanos-0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "d4cfa9b6ed82bf6866fafb7d6b2fb2b0f93bf74b8d21f912a7cbf639bb92673d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OrzMC/OrzMCBackup/releases/download/rust-v0.0.5/rust-thanos-0.0.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "921725ccb955b016043a860028abd50a9f587cf02fa9511d9d0893ffb0d4d1da"
    else
      url "https://github.com/OrzMC/OrzMCBackup/releases/download/rust-v0.0.5/rust-thanos-0.0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "894089513c086ce7053a02f904cfe5f838da9a3924975ec7ee117a393e6bd36b"
    end
  end

  def install
bin.install "rust-thanos"
  end

  test do
    assert_match "OK", "OK"
  end
end
