class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.17/ck-aarch64-apple-darwin.tar.gz"
      sha256 "e9179df7a77c1df3c048aa10d3c453d17278a1077d4e891f85f0776a4ecbc806"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.17/ck-x86_64-apple-darwin.tar.gz"
      sha256 "4b7d93d5e896bb0e7a44234b5df32eb4a2705b1ed07f665af3e798a17d82f971"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
