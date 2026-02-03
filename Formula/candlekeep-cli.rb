class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.3.0/ck-aarch64-apple-darwin.tar.gz"
      sha256 "aa5d85676cc19ed07fae0bff04ca9a94727e91533c7704f31283831094fadca3"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.3.0/ck-x86_64-apple-darwin.tar.gz"
      sha256 "83f3b6895c90c28932def283b588d8a3fae2b88befc5b1524aea0a31a269dc1e"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
