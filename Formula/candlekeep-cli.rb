class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.2.1/ck-aarch64-apple-darwin.tar.gz"
      sha256 "e4aac5f57ab9b6760c30af575dbae0a62a712b2e6c975dd1d14bb104dfb5721b"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.2.1/ck-x86_64-apple-darwin.tar.gz"
      sha256 "323672e7ea3f64c02a090f91964d37f77bebc673ce70f20b83bf56c3a18279ff"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
