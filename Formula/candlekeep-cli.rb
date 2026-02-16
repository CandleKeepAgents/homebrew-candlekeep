class CandlekeepCli < Formula
  desc "CandleKeep CLI - Manage your document library from the terminal"
  homepage "https://www.getcandlekeep.com"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CandleKeepAgents/candlekeep/releases/download/cli-v0.7.0/ck-aarch64-apple-darwin.tar.gz"
      sha256 "db1e24b422a1dd13c70acf30d5e03707ef0552c84e4c570436a398cf9e4e6ee3"
    end
    on_intel do
      url "https://github.com/CandleKeepAgents/candlekeep/releases/download/cli-v0.7.0/ck-x86_64-apple-darwin.tar.gz"
      sha256 "5ffbef347ee2007c2cd308a53190de74b90ba905b56901af41171d9dc7e551ec"
    end
  end

  def install
    bin.install "ck"
  end

  test do
    assert_match "candlekeep-cli", shell_output("#{bin}/ck --version")
  end
end
