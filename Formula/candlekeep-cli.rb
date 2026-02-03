class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.3.1/ck-aarch64-apple-darwin.tar.gz"
      sha256 "cdb999c985e59bcbdece5ae3df4a43d0120addfa57a9484dc7d0695249a35a8b"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/candlekeep-cli/releases/download/v0.3.1/ck-x86_64-apple-darwin.tar.gz"
      sha256 "3015c49e7450582032d72be87bcd99512d88886339eb7fed4caa8bb09b071d87"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
