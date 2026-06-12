class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.8/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "4cb2dff1a8d781d760e4b9978b01ef7efb42a24cf93ed471d85de9d896b3e547"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.8/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "7ec9713615930f52b94620bd848c90ca200f6a412d7a6068d63457253be4f5d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.8/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a8f43cb053f449a0c9b6eb2431f03a963875ce49db0cf7972fffa179c445024"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.8/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33eb7477cf017912f0e5681498684135074accf24706c4096e0aeffd79a96932"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
