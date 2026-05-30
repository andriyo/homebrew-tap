class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.3/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "b240286ff124de166bf4d5ce999009156d97206a6b69fb64d39803a65e7b4433"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.3/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "5699aa0e104e16dd9c1f02a34998312a461374256ade7f318ac96baa9ee0ff04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.3/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e43b9ce80a205d07932ae2f77f4fb2094a34273119e72e02a8cfae59c8130a65"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.3/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb8945e7cff9011eaeb7f025cbae303a9b0254767e5ab18f014d9a77845ef837"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
