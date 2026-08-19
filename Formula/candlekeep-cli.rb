class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.48/ck-aarch64-apple-darwin.tar.gz"
      sha256 "5988ab8b0ddf84621895644bd4cacb874966a01992dc4144d8ede3120b7601be"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.48/ck-x86_64-apple-darwin.tar.gz"
      sha256 "81e9575f12e19166910923586fe6f02517960529a410cdb5650aa05d21221d72"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
