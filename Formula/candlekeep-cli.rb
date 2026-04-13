class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.13/ck-aarch64-apple-darwin.tar.gz"
      sha256 "64b72a23b035cd4aac4ff7ccc1d4e2fd3eb4d2289638e3623e259b10367e9dd3"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.13/ck-x86_64-apple-darwin.tar.gz"
      sha256 "1f005a576517bd7e98a3e22d576ce41df572258c652f81b0b740844064c7b8b7"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
