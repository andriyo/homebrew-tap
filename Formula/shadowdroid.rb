class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.8.2/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "22deba1a39f8595003c22f9b220dcbe59d2877873404911945dd218d436b8ec8"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.8.2/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "3555fe7a2f87a9b6e9c167b6e3fdb6c6de1f649367b659fa8e5efbb6f3e12d64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.8.2/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb972289456a54b1d5004b341105c8b8d95581cd7d1c824f1a2dff40398e657e"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.8.2/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "924230b9b38557989bab5b198abac6a6052f5331a6e892c01f7482f3fee58147"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
