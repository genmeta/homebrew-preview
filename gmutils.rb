class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.2-beta.2"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.2-beta.2-aarch64-apple-darwin.tar.gz"
    sha256 "9f314187f527b1e7edace61b9cdcfd412fe191fcd083f6e45e862bb4ac673871"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.2-beta.2-x86_64-apple-darwin.tar.gz"
    sha256 "5139e06759cc2252300200cb8682a1757ca6f7535bff8edf786f2e875615800d"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
