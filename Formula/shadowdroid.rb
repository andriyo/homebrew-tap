class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.4.1/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "11b081236596bc82b7bdefa04e1b53167439ca332ba67e9c87fdb3b7fc62e74e"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.4.1/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "c96f1d75b9c09cbafd1867c50ae9b16fdbd0286da89a565ce7e364e757ac4482"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.4.1/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6277d2271d885c8c5bd06fc3d66915825005f87a0e2e936ab08723d5b8ff6285"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.4.1/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67eea2522ae657806525444911f4fc6051b3cb509d55a15577d021e2b2bff4d4"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
