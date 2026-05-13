class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.22/ck-aarch64-apple-darwin.tar.gz"
      sha256 "12be16735576825228f9cf91f181e57266312866600a230255628a6e834297eb"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.22/ck-x86_64-apple-darwin.tar.gz"
      sha256 "e33234bf5e0af229d9a169706b01d693f48f50eebf217b7ea65b043253de6b12"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
