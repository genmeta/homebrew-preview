class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.0-beta.4"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.4-aarch64-apple-darwin.tar.gz"
    sha256 "832387f6a13f6c3e9b07f2551caf41cd18252a22078d1b413c7cb8b5b59847b5"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.4-x86_64-apple-darwin.tar.gz"
    sha256 "d1f3e87fcda48b5380e414648d911f18f8b92afb5d750cdfb50267d2cb0f7b7d"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
