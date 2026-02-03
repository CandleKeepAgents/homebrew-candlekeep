class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.3.1/ck-aarch64-apple-darwin.tar.gz"
      sha256 "66849e3675e494eb8fe48d2a4257626e32d97533fb634b396702c49fb7cb276c"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.3.1/ck-x86_64-apple-darwin.tar.gz"
      sha256 "40758004f49f74c2aa8bcf07e5a2c97b9f334475c4cb76d9db8dc955978a9a5e"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
