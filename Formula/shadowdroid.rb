class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.3.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "2d89c73a8fe5c9b3b2bcf5b3cbca7bfa3856723bcba8fe48abeedb6a3e6a8115"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.3.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "a91a547abc35ea3d13e5e5d0edb3ac37be5b24decde8366c63032b63de720efe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.3.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c19109638068092666f60ec1b6c5e3237e328a56317fb96a939d8153a2222c64"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.3.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33979f8ac8fdf5dca50f15ef9cac9492ecb2551142eca20f4d441be7877cdc75"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
