class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.2-beta.1"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.2-beta.1-aarch64-apple-darwin.tar.gz"
    sha256 "017250e8176774374be40eb97d9ef4a181a1473b14b03a50789abc9d1fdd8a39"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.2-beta.1-x86_64-apple-darwin.tar.gz"
    sha256 "0bfd734db708e84fb7379080f400db96a6bda65349950d2d27e41014157460b8"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
