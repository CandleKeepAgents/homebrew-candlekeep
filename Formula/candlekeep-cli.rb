class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.44/ck-aarch64-apple-darwin.tar.gz"
      sha256 "f9a0f4c0511bf62c5581e7c05cc7d6fc74f91d2620f060d514c59ab721672458"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.44/ck-x86_64-apple-darwin.tar.gz"
      sha256 "c9816c4d5c4df217cdaa914bcbc928d179cacbd8177d8d76879703bd8f16e792"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
