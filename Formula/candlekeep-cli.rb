class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.32/ck-aarch64-apple-darwin.tar.gz"
      sha256 "84c786910e90e55168ac9f06c7d4e87b4af3e98f00d1c80751ffda91946d8385"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/homebrew-candlekeep/releases/download/v0.7.32/ck-x86_64-apple-darwin.tar.gz"
      sha256 "491e3fbd62d1ad5b0bd402e405ab310f6a39bf70fcc9ce53d9274742e6efb3e8"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
