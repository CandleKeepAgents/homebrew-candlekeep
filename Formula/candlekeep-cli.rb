class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.33/ck-aarch64-apple-darwin.tar.gz"
      sha256 "431fd3da52e7421605a5a6efe2af4ab17e86e388caab790f08ec48c707273ddb"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.33/ck-x86_64-apple-darwin.tar.gz"
      sha256 "3dcf90ea87ad23cd5fd9652d66eb5b7a1c0838794aba9c31201c54c12ef9b3a1"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
