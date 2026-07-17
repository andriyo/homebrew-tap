class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.13.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "4c54c7f4614ba182463d660f6d07aa3bcfec621a221d9314e868f226478a1a38"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.13.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "fab446eecaa962bf02d71135d44995a5be29e811b3879b2def4c03cbd288c58d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.13.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0dd32f2dd54ddfc3992f53cd10b49c3d07dc8a160dd9021e7881a568c376af26"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.13.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce4a09ae3b9940b15ea9eda4069bf4f986957ee73fd818066af6e61f15e782fe"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
