class RustThanos < Formula
  desc "An efficient Minecraft Java world optimization tool to detect and remove unused chunks"
  homepage "https://github.com/OrzMC/OrzMCBackup"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OrzMC/OrzMCBackup/releases/download/rust-v0.0.4/rust-thanos-0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "cd6916831bd27f7f711b475002661c4e8b2a038147d79e2eb64ec3f3b3fdb7b7"
    else
      url "https://github.com/OrzMC/OrzMCBackup/releases/download/rust-v0.0.4/rust-thanos-0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "13e40c9f9cfa3f91c6d0ec1778d46187f2202d29137edaaf14b12ae5e6dedff0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OrzMC/OrzMCBackup/releases/download/rust-v0.0.4/rust-thanos-0.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c06ea4c666a9d11bd589e831a32a7af437c8fa6294a615e908710083e6a8a35"
    else
      url "https://github.com/OrzMC/OrzMCBackup/releases/download/rust-v0.0.4/rust-thanos-0.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b041e39e4f6795f069d08c3c09321575dfbb9478509345130c5602baa95f139a"
    end
  end

  def install
    bin.install "rust-thanos"
  end

  test do
    assert_match "rust-thanos 0.0.4", shell_output("#{bin}/rust-thanos --version")
  end
end
