class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.26/ck-aarch64-apple-darwin.tar.gz"
      sha256 "47e6f04a5469b345c5433a52d18eda93559cce32af70dcd714bf46d937003b7d"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.26/ck-x86_64-apple-darwin.tar.gz"
      sha256 "061107c2e0216f9f4803415c60901638ddfa7925fb5fa9fdc95ebb931f4f10e0"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
