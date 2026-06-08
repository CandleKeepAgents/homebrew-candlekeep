class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.25/ck-aarch64-apple-darwin.tar.gz"
      sha256 "06a9dc4b0bf1c49319cd309f61810e8fd74b990ccdd88e66c6e11aa78ed7ead3"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.25/ck-x86_64-apple-darwin.tar.gz"
      sha256 "70d9f7c7b771f5427563e43171f3c8b1d3ea3c61c53c895a6ad599ee7da85e8c"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
