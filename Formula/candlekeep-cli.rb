class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.19/ck-aarch64-apple-darwin.tar.gz"
      sha256 "331a15a2d51e8fe0a2e67caceb468f315b2479c0079e7c0b2685a51f37f32019"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.19/ck-x86_64-apple-darwin.tar.gz"
      sha256 "cdd9da2697c5b69cf60af6bcc77be6490e9a7a4d6ce68821c69b1ff91af335df"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
