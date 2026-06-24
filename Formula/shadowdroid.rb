class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.7.1/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "d738695b83027bb02761181646be39c38909d48148ee7be5ffce49a4bca218a8"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.7.1/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "55cbe466a3fb6946c43e595ab6d71d152da927a852f754b599e6109d5fb59f15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.7.1/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "acf8993405816e2e2a85e75958fc641bb7be6c8b061d232c98e58ed15e2d650e"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.7.1/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71e683bb248e3c03673cbfdf7df63871fbcfeac7b4aa286d3377bf187715d0f9"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
