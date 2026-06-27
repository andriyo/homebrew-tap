class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.7.2/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "fbd515e62793b257cec7ca97d0b1d049b505b26415b78a687453744f4d039873"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.7.2/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "2b3f986bcdd892f1a14c52933a31614f6e3b8e04d978157c0ee5d628e85c5e55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.7.2/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53e33f66db2678412ed75b333141d8d322496bd603936fed4c5236d9cf1d5e6d"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.7.2/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e1ba84a875e01b757a93f1e65e578aabf5f83d7a52b5bf64faed159e2af3fb7"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
