class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.0-beta.2"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.2-aarch64-apple-darwin.tar.gz"
    sha256 "463f23cc89ba3a1522c4b34e307813bdb8e4fb9346567dc0ec6bd2563141f746"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.2-x86_64-apple-darwin.tar.gz"
    sha256 "3b7648603e876c9592bb706b81f572ff970b933a076079a4d446be7983854b69"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
