class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.31/ck-aarch64-apple-darwin.tar.gz"
      sha256 "0ff467b271e6cb8a7a4bec5b7d3a152eeda6100b90a1f6d3360b02ba55822dd6"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.31/ck-x86_64-apple-darwin.tar.gz"
      sha256 "8c466a53be58a486a7936172179bc7139d473442625da0ba9999f41b9ee1e9d8"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
