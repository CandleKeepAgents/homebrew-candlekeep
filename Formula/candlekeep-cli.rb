class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.20/ck-aarch64-apple-darwin.tar.gz"
      sha256 "f06a0b5a6e68b79ef1750df465fb67a972903bb0af8994b9adfc83cfadf14c1a"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.20/ck-x86_64-apple-darwin.tar.gz"
      sha256 "5ee8994b79fa45b845e61d170ecf87a367f620f1c56e5f8092394af851a9679b"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
