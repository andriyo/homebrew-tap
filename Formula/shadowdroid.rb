class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.6/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "ec4db2098b6a36688ca89363b4b29bc11bc051d7d1320017c5f04897deaa45ec"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.6/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "482c1f7120b8fee594a5a08a041932ed2e4cbe559b38dd6bf229a8a18b8c0e44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.6/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4763e99bd696c410ae860e636a84a2c4092153fcdc122fde20cc796bde273843"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.6/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "39d2047b5c0f400c589eb038c173581cc2104c5f52fbf6635e2df71fa8e88d80"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
