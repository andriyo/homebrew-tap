class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.9.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "26ad8b96f2ad7cb85bbbe0185632cfbdd8c906ceb4e2db7c1bda51cd048c93fa"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.9.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "0fb807ab9f00ff797c2858c2bc432270f43a3993e40b2510defca61b3f0d809a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.9.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "837a09c12fab792e3e427a51ff83e7181d4355aa4434d82a240aa3b3136166e0"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.9.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67286bf88b0325dbeba2ec3f0e003597cbbfa82890b8e07258272b16c25be59e"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
