class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.1-beta.4"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.1-beta.4-aarch64-apple-darwin.tar.gz"
    sha256 "c56f361ac6ccb90428824ee53c12c59d1fcceb860de2450b132acac25bfd9d6c"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.1-beta.4-x86_64-apple-darwin.tar.gz"
    sha256 "91adf2165dec56dea97d40b5c952e07f5879c9877902b072ec80497e8560eebc"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
