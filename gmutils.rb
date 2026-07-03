class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.0-beta.1"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.1-aarch64-apple-darwin.tar.gz"
    sha256 "2dd5079b5c06df2bafe052a050c8de9d007af1564344bdfcfef43614aff12287"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.1-x86_64-apple-darwin.tar.gz"
    sha256 "4ee6253c05dfe31c7ac5b1d2a12cbc78362a9c3c383353f850e13a8b17f1f5b3"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
