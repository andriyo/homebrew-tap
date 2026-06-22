class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.6.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "275f8a2d3923a28622d673f4180384cb6bf742a34927cc8048e2ecff1a10ad83"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.6.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "fe89f2a3996618ab5b8eb11d881047174f142f2c0f82a5f1470c69263dd6a02e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.6.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c036dfa3c3b35683daaf37a533cd5a2e348781213cfe71c9fb6967be21e4417a"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.6.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c06b020eb1bd9f9df5392ccb8e119ba8c9033118cd5dc7ddd108eeac12223a0d"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
