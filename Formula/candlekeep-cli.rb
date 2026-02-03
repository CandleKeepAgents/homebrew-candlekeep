class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.4.0/ck-aarch64-apple-darwin.tar.gz"
      sha256 "f5b44ed41c08637d4116de73ceb60e619962e1ff14b286a3d7be8cf231c43ad8"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.4.0/ck-x86_64-apple-darwin.tar.gz"
      sha256 "d4b868ec6f7c2fa984898c5e0050efa71b9229340caabcedb328fd49b3967a9f"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
