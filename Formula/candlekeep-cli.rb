class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.21/ck-aarch64-apple-darwin.tar.gz"
      sha256 "0089a50084ba59b7ac1282d91d4cf074717f44c48662a3a7f6a356ff19e89963"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.21/ck-x86_64-apple-darwin.tar.gz"
      sha256 "8d15807f0babd48e5bcdc5bfa4ac73ba798939a5d1accfaa323a8275c9083f5f"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
