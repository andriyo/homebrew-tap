class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.2/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "a5d7fd7ef696e6b5a7687e1a799f543db0bef9d7352187a5024e2a3c5685b38b"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.2/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "c2bbfe75d2036e5c2843a4c78057b27a81787817a9c3da67ad7adcf46ee48521"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.2/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d06629237325146c6188409fa35e0bce398f0f151f0887861c577c0d28803dc"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.2/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb351e235a8816c53512e03bc9bfe48444e6104bab51a085d5b56e34f6fbef7a"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
