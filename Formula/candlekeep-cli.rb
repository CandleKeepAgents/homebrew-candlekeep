class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.1.4/ck-aarch64-apple-darwin.tar.gz"
      sha256 "c13ea13c8c6409e2e82091de48eaa9f267aeaf9940e18cf140946fcef07b7da1"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.1.4/ck-x86_64-apple-darwin.tar.gz"
      sha256 "d6889bfd8dbb42e839c1dd99272ee31eed446590175d865ee581130f0da6c848"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
