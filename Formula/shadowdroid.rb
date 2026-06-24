class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.7.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "44562a368ae8d8034de0c4a1d0435cdf95d8ea089a532ba101a15b1fbc2d8526"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.7.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "5b3f7bada1d86dfd143123bd5a34e2510f8d5ab23728a5e337ebe7dba658e953"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.7.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60df1f5c0ce4707bc5e2f488ee5848cdc65bd8b6ecdc48c93dfd7e30b40a6798"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.7.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "526ce9a60c227a10b96d4bd249454b86b1225997b9005e825e412285e5525b1b"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
