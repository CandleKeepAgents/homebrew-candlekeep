class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.49/ck-aarch64-apple-darwin.tar.gz"
      sha256 "527abb28feab2fc95a0ec9e7b2095c5d60a2ab76e2031413179dcfb637028320"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.49/ck-x86_64-apple-darwin.tar.gz"
      sha256 "17924944c3cb3634c3324534e9f4b3b992237ccd5c647f00bb0cf342129cf043"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
