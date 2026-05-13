class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.23/ck-aarch64-apple-darwin.tar.gz"
      sha256 "e6e8d14c7f6a72c05d7ce5461a340f886f745f8ef656823960db2e005bd8b6e4"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.23/ck-x86_64-apple-darwin.tar.gz"
      sha256 "8ac3253a087e0a66eb2d7931f67f10d2d543db340d89493421b872a83e4db2eb"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
