class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.7/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "4edfd2de43324c305129d87c36144f97f9b2d0ee475f4e50d7200a728961ff04"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.7/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "13e045e57bc2ed9f23fbd65c1ebdff5b040750c2b08499c5e2a9b37d4bbb2026"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.7/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d81142e78a96fe884fd88e4f4e3e34387a033fbc9ee5b0aeef4dea46df0a5905"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.7/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9f06d12d0bad012d381a40a6ffdb03753e38498b94bfd9b1491174f3ab7f70b"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
