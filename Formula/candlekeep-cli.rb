class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.34/ck-aarch64-apple-darwin.tar.gz"
      sha256 "1d1d49765eae6f7e95cc99c8f2fef599daef8d5f95ac16dbd230bfe9d7fb233d"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.34/ck-x86_64-apple-darwin.tar.gz"
      sha256 "f485b709ad335ce286399fa4eaa91495dceecdfccc2507768a3efeca45a10997"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
