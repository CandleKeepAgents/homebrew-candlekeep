class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.38/ck-aarch64-apple-darwin.tar.gz"
      sha256 "0068b4b48e97d7c82a71ddc00f9c16026e55699675faefa2e2980b6ccc70d994"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.38/ck-x86_64-apple-darwin.tar.gz"
      sha256 "b56096e1d624013bdd1c37bee74aaf4900065e976dcef6dcdf1cd425d896e1ba"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
