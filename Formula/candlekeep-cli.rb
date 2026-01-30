class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/candlekeep-cloud/releases/download/cli-v0.1.3/ck-aarch64-apple-darwin.tar.gz"
      sha256 "6a86c97c8348c28c094ecb215b645e1df63b4b0f657d51a677dcfe1dade4892e"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/candlekeep-cloud/releases/download/cli-v0.1.3/ck-x86_64-apple-darwin.tar.gz"
      sha256 "9c02a7cbe0fb77ee0defc98ef969f3169030a53d40fbc158ddc68a4750fa0b71"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
