class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.5.0/ck-aarch64-apple-darwin.tar.gz"
      sha256 "568f16d1beac336f7868e8d41080be84fe235c855ee083c1f181c54ec66daf16"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.5.0/ck-x86_64-apple-darwin.tar.gz"
      sha256 "e1d84245ad6eec11db243cb95d9e5ac31cd63226acb43b444f7e99690fc97881"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
