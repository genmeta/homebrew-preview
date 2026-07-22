class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.0-beta.7"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.7-aarch64-apple-darwin.tar.gz"
    sha256 "ea1dd27e1ff2c44f6475785006d04560a1f019f0494560b08ee99eb2cb51e323"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.7-x86_64-apple-darwin.tar.gz"
    sha256 "0033f427194e086d1047c6f842925d9c62475e65870fd09981d6120e482db88e"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
