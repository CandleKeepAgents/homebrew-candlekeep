class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.37/ck-aarch64-apple-darwin.tar.gz"
      sha256 "e92ada19d0eef34832a7a1df22d243ef59b771b91ebc798a35a38be5f1f73d98"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.37/ck-x86_64-apple-darwin.tar.gz"
      sha256 "59569abc4158d5d41a4c7f2cb7888564a0bbe442f7dbc9af50646d7c310d0b27"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
