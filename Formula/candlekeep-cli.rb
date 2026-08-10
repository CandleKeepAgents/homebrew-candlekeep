class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.45/ck-aarch64-apple-darwin.tar.gz"
      sha256 "89a581ef67bc6cf6081183310be2571627102a22bd0166743128407b355e4bf8"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.45/ck-x86_64-apple-darwin.tar.gz"
      sha256 "cd84522df1ea80a26d92b876d39b4042a86d4ea30fb5507fd9153ba554a3184a"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
