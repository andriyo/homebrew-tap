class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.5/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "c5c87663be3c0745222b8c086fbadcfc3ac3dc328f59f0ea35fc6dfb4f7a8b88"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.5/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "231699b2df7da52f1dd102cecab47a2decb6ee1c6b765d53bda385b0f7866116"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.5/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c4d6f471af5cff8fe63dac3dc64e466343525d089dd43345f3da52b6667cb1a7"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.5/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b1799256cb7d31d808ed446504c7dccb3c29f0cd462629fc1af649c3fc4c275"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
