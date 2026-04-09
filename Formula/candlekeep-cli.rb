class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.12/ck-aarch64-apple-darwin.tar.gz"
      sha256 "89a89d7aae5d40941a622639a8ef03b784456cf4168fe6a97a047feead055c80"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.12/ck-x86_64-apple-darwin.tar.gz"
      sha256 "e0a46126c9e22f5a9607a7cc974dc1cd879e122e7fa48936d423ff669e08baa9"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
