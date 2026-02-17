class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.1/ck-aarch64-apple-darwin.tar.gz"
      sha256 "b2c5a47dfe26beff10f6c030c5f8439d338a1e74db1311022cc520d2a0c3ea05"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.1/ck-x86_64-apple-darwin.tar.gz"
      sha256 "e09a631dc8fb38f291aa74677fe9c67e9d22d74f52c4747619f30e7f5de282b3"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
