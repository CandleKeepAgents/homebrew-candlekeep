class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.2/ck-aarch64-apple-darwin.tar.gz"
      sha256 "e330f61ea4d84c854f8466e989e7283434d2f3bc3372ee17857ae21bf159ee4f"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.2/ck-x86_64-apple-darwin.tar.gz"
      sha256 "2224e75b67b7b9e4b6bb2ffe0ce3c56af12c0828a1f2c789117267e341b57692"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
