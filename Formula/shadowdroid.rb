class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.12.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "8fdda0ff0289ee6a80a518cccdb9e9d2e2dcbfdd7e1391f53b955dd192325273"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.12.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "b135f758b5e635423bc38fc264c63a0fa9c832dbe5df132821a90cd8a9c2948d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.12.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "574f57f9330443e86377a30297f2735236ce915e7bd591e22cfd0e9aba0e128c"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.12.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "360ac84603493b3c10ad82086f731865d2e73408506b8c4f5458bd07cb66193c"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
