class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.16/ck-aarch64-apple-darwin.tar.gz"
      sha256 "ddedb8fd30dcd7a190edbf3efd3529024b45dfa4c7c0418af45d7dd23e5d3539"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.16/ck-x86_64-apple-darwin.tar.gz"
      sha256 "acbdcb159ef95e30d3a377dfc2b5f68ed9f466b15565226d40f46b0d8ba62453"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
