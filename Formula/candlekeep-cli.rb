class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.11/ck-aarch64-apple-darwin.tar.gz"
      sha256 "22730c299b30bad6a2622b401fee419082b856217d0186c2568e21d0f8dcfdb3"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.11/ck-x86_64-apple-darwin.tar.gz"
      sha256 "4746a7c60fa85557cb60da332c1ddd578259c354b4a4e04b29158cdebdc31fb6"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
