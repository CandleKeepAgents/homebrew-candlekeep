class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.3/ck-aarch64-apple-darwin.tar.gz"
      sha256 "17b9acbf9a761029e22866ff69ea3e32c1946641cd823d97922b4ec50e2ccece"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.3/ck-x86_64-apple-darwin.tar.gz"
      sha256 "cd164ce98844de71d859bc35682412bb18d8d589f1e25daf2fffa3e55ad603fe"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
