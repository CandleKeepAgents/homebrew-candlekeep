class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.14/ck-aarch64-apple-darwin.tar.gz"
      sha256 "8efdd0f9a98d85a7a627041c46373ab293ef972ac3855ff0d365414a21435378"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.14/ck-x86_64-apple-darwin.tar.gz"
      sha256 "1bf9faf3fa3dc4112d5af46e50cd4958801e6587ff0217409153be7853dae203"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
