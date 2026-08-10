class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.46/ck-aarch64-apple-darwin.tar.gz"
      sha256 "72be1e488580eb57abdedf8a080dd60ec59a0d12fa6ba615ee9639e35d1cd429"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.46/ck-x86_64-apple-darwin.tar.gz"
      sha256 "bf5090686c29114f6795a639219ac52dfdef6a9498026c19baaa34505f276878"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
