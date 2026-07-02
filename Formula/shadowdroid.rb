class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.8.1/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "40128785e79805cef51568e2b6b7e6ba6307d245163724f987a767963aa7aa06"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.8.1/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "af2e696a9bbbef928cf94b0fff018b28b6d71b35625a3e5c726760f355dad842"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.8.1/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e49bff8a137e48b0358b52d13afe4bbae49c3d5364ca97259499a582065a85d5"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.8.1/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9184577faa70363e5585c7cabfd64a25e579a1d3dda899c3dba2cce300b94b2e"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
