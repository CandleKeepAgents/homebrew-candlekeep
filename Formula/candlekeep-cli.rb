class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.2.0/ck-aarch64-apple-darwin.tar.gz"
      sha256 "1d13350bdcfc7af4170e5e6f63c4725d45352a23c4d219671d219531c0e28c41"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.2.0/ck-x86_64-apple-darwin.tar.gz"
      sha256 "da9ab3795c03d65ce81c17670e5a3ef005d391678bf953dc251b5f42132857c3"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
