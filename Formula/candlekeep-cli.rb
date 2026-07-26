class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.42/ck-aarch64-apple-darwin.tar.gz"
      sha256 "7c2f5ae30ae7d995119ea030ee3e00462bc706f69312489fa344a0fa9bd99339"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.42/ck-x86_64-apple-darwin.tar.gz"
      sha256 "b92517e9cd3f874568a8fab9969f95402fa431eca786bc8088abaaf637619f25"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
