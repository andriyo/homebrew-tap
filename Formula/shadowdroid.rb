class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.5.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "7656948b42dc1c0cf9381d1854ef6cfffb8687ed4c3e39372e189e6bda6fc479"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.5.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "a28a40e5171cfdd969e08b5f87697cbd38d29a028e99a0c81062bc26b580ed8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.5.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38bc049ad0b7dab00b409346716b99776991e37b3eecb7d0403b093dc0a6b723"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.5.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e28dc82e1eb06a5f3ac6c78b3981b6e3f3bc61afcd2000f14aca156566816e9b"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
