class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.15.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "1f8b28cc61584a08c5f343e94d38a77c7ec73b3b99d60e477773988ed836dc01"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.15.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "78c619ebb81a25b6ed9acf5595ac7cfc5c9b8b552b0a28f7d74c0149be64e18c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.15.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89d643127ce9ef38bb7d41057f33321c67aca3e2503e2100c1804e896b983f5c"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.15.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d9274171619c53965a3d0a0c412b8e37d1e4fdfbea90a0a88038101fba95aab"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
