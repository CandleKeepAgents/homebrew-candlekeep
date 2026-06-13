class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.27/ck-aarch64-apple-darwin.tar.gz"
      sha256 "64590df9ddd0336d5599499052c82d6ada096981235db224e5d35fc306bc3465"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.27/ck-x86_64-apple-darwin.tar.gz"
      sha256 "876e217b5ed0aed0d1f3340bd7b8c3fe176d0ce71a051dcdd4a6c10f2cc6ef97"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
