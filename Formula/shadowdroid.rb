class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.11.1/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "6f808ddf7a72717ea4eb68caacd2ff3f532bfe2ad58e8af03b819a7890c98783"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.11.1/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "2f28cd488067b4d871ddde9b3a44d247c0efb75ae8bfb0fa0663cc313f113fcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.11.1/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d6b9963ca4900fa9d0862095bd9f0b4d25eaae73107069dc29db990b0aa691aa"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.11.1/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e2d11c2a09658f8ae3d2e0d437cfc03f455d44a3be44007605efcd429b2122a"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
