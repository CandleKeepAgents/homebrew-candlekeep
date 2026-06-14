class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.28/ck-aarch64-apple-darwin.tar.gz"
      sha256 "11f0252c57aad8d4a961fce8f10ead8facc1af19cd86c929a4dc485fa3b6d51f"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.28/ck-x86_64-apple-darwin.tar.gz"
      sha256 "55d36e23044ed5661b89f2c52016c7873d9605bfb430b0603f24eb028d87d9cd"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
