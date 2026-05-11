class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.18/ck-aarch64-apple-darwin.tar.gz"
      sha256 "67f1dd50ef13550d4583460717509a66740368265961751e6dc5266a21655689"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.18/ck-x86_64-apple-darwin.tar.gz"
      sha256 "f2b4d8ce71b627a95a65c2f52dd180bbbbbee295a2058f16582ee42eb68272a9"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
