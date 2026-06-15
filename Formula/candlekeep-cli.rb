class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.29/ck-aarch64-apple-darwin.tar.gz"
      sha256 "9d1a58468cd6f981222b53a8679f4e1e65145c43b247e205a40e8802adadb26a"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.29/ck-x86_64-apple-darwin.tar.gz"
      sha256 "793fdac8060686494fa294911b29124957685e2e07d08b9e5cd504c9f44c2f09"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
