class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.5/ck-aarch64-apple-darwin.tar.gz"
      sha256 "5762c31bfa1d295c9708599a3b706b028362f42c21d1d47b0fc681bdc9c7fe82"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.5/ck-x86_64-apple-darwin.tar.gz"
      sha256 "83477f36e66fbccdbd7577134b4ade21d0c367c323d612729fcc1cc390b21c05"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
