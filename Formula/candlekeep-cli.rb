class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.36/ck-aarch64-apple-darwin.tar.gz"
      sha256 "a82aea1a70d93ca32b5a36f278f9fbf326a54054c85b2c80c0c2667e49b65103"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.36/ck-x86_64-apple-darwin.tar.gz"
      sha256 "6d5935a76c9eb97639f7796e0260ddc443df7f42ceefff18365ec905c75d3032"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
