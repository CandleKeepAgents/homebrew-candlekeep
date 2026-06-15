class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.30/ck-aarch64-apple-darwin.tar.gz"
      sha256 "81e9390d91cce279175b0249a08830c568c91ce06df32007ad59103b9a4374dc"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.30/ck-x86_64-apple-darwin.tar.gz"
      sha256 "75a270f1e9d78d8ff772ef429e63ac987432058d732d019b44b664382b87365e"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
