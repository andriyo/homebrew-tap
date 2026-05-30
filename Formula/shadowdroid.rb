class Shadowdroid < Formula
  desc "Drive Android apps from the command-line with streaming JSON events"
  homepage "https://github.com/andriyo/ShadowDroid"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.4/shadowdroid-aarch64-apple-darwin.tar.gz"
      sha256 "070efafc0e224d3a769886493200341b9b80aed9f9aff5efd46920ec18aee175"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.4/shadowdroid-x86_64-apple-darwin.tar.gz"
      sha256 "8ea4cffba3f94a6a794ffce176804ad39d31a3cc1051ee554d2e62540c19314d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.4/shadowdroid-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c326a4b97b73b030ee74059126f932d0cf9fa53fd70c486c8805d5ff36f465ed"
    else
      url "https://github.com/andriyo/ShadowDroid/releases/download/v0.1.4/shadowdroid-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f1196f464e99acf7c5cf40d1c2e56de7a736d4e66cb79adececaedb59d525ce2"
    end
  end

  def install
    bin.install "shadowdroid"
  end

  test do
    assert_match "shadowdroid #{version}", shell_output("#{bin}/shadowdroid --version")
  end
end
