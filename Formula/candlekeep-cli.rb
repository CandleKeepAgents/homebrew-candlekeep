class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.40/ck-aarch64-apple-darwin.tar.gz"
      sha256 "f627361384f43d5a69aa7f0ba0586e9691575c28941ada47dff2ba66ee7db75f"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.40/ck-x86_64-apple-darwin.tar.gz"
      sha256 "982032e395ff83818796973162e5fb856143cb931ee6a4842873da1b6451bd45"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
