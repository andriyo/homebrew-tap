class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.11.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "a23edc13bdf8107bad23abc9af0e9d34a7e33c227bf82bec9cf07f1c5f993312"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.11.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "56238cdc8eb7b826f7d0aafff97ac80f58e4cd8b3c8735011cf99af64bc7ff4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.11.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4b1e2c2e6d62ddc01f2a84d9d2f767e514314695952c683c7adbecbeda0ae83"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.11.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d61e11c09dbc770b4c7684676c3f99536f4f4e300345a232216a6d48663c9c42"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
