class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.6.0/ck-aarch64-apple-darwin.tar.gz"
      sha256 "43c77c5e31026bb9275174b0beefaca6975c1f96c54fe57f6bdf0b26ab88c7bd"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.6.0/ck-x86_64-apple-darwin.tar.gz"
      sha256 "873e15c7ce69bb123f453330788b7b9a7dcb9d8218bfc8aae19cceecb0a14dcc"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
