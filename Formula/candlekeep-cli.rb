class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.43/ck-aarch64-apple-darwin.tar.gz"
      sha256 "07471b3ca31559eda05bf16b352407f4f485f70b5fbe43e4745aa5bc88fa5878"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.43/ck-x86_64-apple-darwin.tar.gz"
      sha256 "9a6e07a2c69aca86a374de3bd43480ff7d06d57ef77ac26b8e6093038e9d5255"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
