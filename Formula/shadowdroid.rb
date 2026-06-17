class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.2.0/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "0985f0904f155dae98bb7c7eb515d7916817ac09a4914e54d50ee06a2a16b5bb"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.2.0/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "3729e0660949b2a9c000daee16e1b1d9a2204961e31539700834c5c6754b7898"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.2.0/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "573299062600da23e03c57625313a9a11c3a871a61e50ca46ca0c57e20000b4c"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.2.0/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1dc0d83c0b5eb2b23e79a19075a602bb40f3a2820f2efd5cbe0a73fbaf2d3fba"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
