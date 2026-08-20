class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.50/ck-aarch64-apple-darwin.tar.gz"
      sha256 "d00bef8774a24a1e731979630c0a1a671964ecbfc4ae90af68196011b12ad771"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.50/ck-x86_64-apple-darwin.tar.gz"
      sha256 "1fd6b0057048ea80b60c6558265051cad7ea59a98785a83b2a8632305a5ab646"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
