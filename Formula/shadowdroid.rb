class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.14.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "125dca8870dd30ddbfde6e4e93590c90cd79b4421a525fdcb95e63482d78a824"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.14.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "bf343624617f26975a5fca64d00c8cd4914f4832087ec1cc35d71b9523b9e3f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.14.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b01cec69abfa9ba7e7fd74d4b29cbb691b3108a6b17dd23ab995c908b182220"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.14.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b32afe94033b22f270d983032897e4e6559e82dacf5124b7a0951416530a726f"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
