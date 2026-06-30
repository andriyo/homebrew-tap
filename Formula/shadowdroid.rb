class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.8.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "439d036ca31e627c52899362e7e34d4716abd70358f364642b062aba0c98af1c"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.8.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "26e5b9ab279ae013f2f7a9107deb557ee347c85bc679bcc04115471b706d0879"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.8.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8611165b9e01202000ef3a347bb73c96227b9da85021d418ca224b82d3cc9bc6"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.8.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23f97a9bd3e677c300298c6a910598dc5a8d9d976c2cbe3f9058b5f20827dd48"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
