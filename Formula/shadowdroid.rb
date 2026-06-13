class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.9/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "351d2f363e603c8a5c24b327bd430213a8e407eaf6807ad883a299908103c890"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.9/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "94dab3f0aa10ba6ece71d199fa14e7e3014347450e276c597dcf9fe481d7e36c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.9/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "55cf6252dd8317cdfe5cde039f1c0352c703ddfb22c6522751a7e3f26cec787c"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.9/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "477d0f0b00322f7f5a36e8de4a18e6f9363aae02e69ed246d27750ee56ab79f3"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
