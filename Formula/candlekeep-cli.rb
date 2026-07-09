class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.35/ck-aarch64-apple-darwin.tar.gz"
      sha256 "5f4757773fde43b23fb87be695b2a2581c07171b9aba7e28058413d239a09410"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.35/ck-x86_64-apple-darwin.tar.gz"
      sha256 "ae8e725d83fde1fd82b2cacadef1b3af72943e8bc3e013428161b7d7e76d8259"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
