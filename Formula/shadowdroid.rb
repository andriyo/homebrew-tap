class Shadowdroid < Formula
  desc "Drive Android apps from the command line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  version "0.1.1"
  license "Apache-2.0"

  depends_on "android-platform-tools"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v#{version}/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "96eae933e2960873343236175b8ac8f2fd2c3ef31c1a765b6cdd7c022c0fb9ca"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v#{version}/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "6d7e8408a5af170a4a572fddfe9a49edf26cc3eaa29a64e218d3afed1c37f42c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v#{version}/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7558cbd8efd8e2bb72415969ee465b8013622ae2e31e940b2497d9e2d3511d7"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v#{version}/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f87aac6fdb6b25a1be43d639e4c6df32b925f40c0139c3350e98079ce5ae6d3d"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
