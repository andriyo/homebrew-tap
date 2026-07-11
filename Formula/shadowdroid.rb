class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.10.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "22310a18162c2f41b004506f41ab943ec1d1b98218747b4cfb13723b2a0555c3"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.10.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "1bbd82a1a337db9c23330a8e06981cd701cd6aebaf326c178ea44a3355835f56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.10.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad9e0ef9200bfab4a1f534a3688f225282608bc4cea64e49e02c9645a53324e5"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.10.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6fd90926bf7b5aa97909bf157caa20d35bb92a34f1461e8e02a6709287dd8f6b"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
