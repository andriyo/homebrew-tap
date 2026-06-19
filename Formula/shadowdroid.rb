class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.4.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "0bcbc8f30bfb698ca5c30ee5c36f62f1a1dbd520543e63187634539b797ed603"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.4.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "40dd51d0fff3db6887af44f089ced598451d630194e626b1aae1cac9d5ef9292"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.4.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d2aea97505320b4bbcca9fdaef14cd6675f84426981e51383891f67396a86c5"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.4.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2734db915ed6d6788a3613c98143ba732f787c38796eefc150bdfd97846cdcd"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
