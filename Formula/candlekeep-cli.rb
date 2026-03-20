class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.4/ck-aarch64-apple-darwin.tar.gz"
      sha256 "56653c6a0d9af252d0f102d29994245ba69bf660e1fbb92f23ea66d9ff18b2d9"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.4/ck-x86_64-apple-darwin.tar.gz"
      sha256 "8927d245013a827f6dbd1f6c24068bb308b31ada38913c748d463de51e67c679"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
