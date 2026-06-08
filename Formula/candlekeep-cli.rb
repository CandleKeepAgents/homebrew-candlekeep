class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.24/ck-aarch64-apple-darwin.tar.gz"
      sha256 "9016ca68ad28835bf01adb1e4413792e89ac1bdd4110f460b28f0bf68f12c4f0"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.24/ck-x86_64-apple-darwin.tar.gz"
      sha256 "4e2cc5ca7ff1be166a7e32fed1bf0efa33baef9d9a6843fc47f8297f174b4ceb"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
