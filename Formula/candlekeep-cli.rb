class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.39/ck-aarch64-apple-darwin.tar.gz"
      sha256 "fc217c73939eadaa3cac57252d8b1530ff8eb5eb14ca0bb08a534f3d737ad36c"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.39/ck-x86_64-apple-darwin.tar.gz"
      sha256 "75dce75cc0a83ff0828f5e86d7cbeb876662a6f830da9e621dae22b5ccc6a3d5"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
