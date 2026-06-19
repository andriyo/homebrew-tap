class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.3.1/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "d0fc4723b8f7bf96949e832ff51355942609227f18bb19411756ed40a91ce444"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.3.1/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "2a74e162c33da655ffdff6c9d1adac59373229cbf05f104a80ae2ad414de3303"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.3.1/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc66b00c3ddc77905d4b962047503fa34133344377b8212a65102987d6644f34"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.3.1/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65054276983a215c9e3498e50e6a455f25443efc57c59a32a65b93f8e60ef72d"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
