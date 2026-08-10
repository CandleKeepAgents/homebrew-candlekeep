class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.47/ck-aarch64-apple-darwin.tar.gz"
      sha256 "2df1cac41a67a90c061c2a88e1990376f5d31e4038973acf2135e7afecfa7976"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.47/ck-x86_64-apple-darwin.tar.gz"
      sha256 "607c59fd5244313c711135568d8fe735f268b912e06044379ae67e0ad9fde43c"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
