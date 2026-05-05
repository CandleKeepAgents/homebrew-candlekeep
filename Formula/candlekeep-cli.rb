class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.15/ck-aarch64-apple-darwin.tar.gz"
      sha256 "0825a6eafdb92752543b1e9e3fad981d8a3ef11631f9b89c68009b5074de2fa5"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.15/ck-x86_64-apple-darwin.tar.gz"
      sha256 "f3b04ed23b9b2368ad833c18f5b39900b08ac6485cf09f9554688f11d8859f56"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
