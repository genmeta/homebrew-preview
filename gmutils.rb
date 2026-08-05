class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.1-beta.1"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.1-beta.1-aarch64-apple-darwin.tar.gz"
    sha256 "8e30cd5275f2ed113dbd8253587c457ee223a552390ba0328c1c34eaa1ebd569"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.1-beta.1-x86_64-apple-darwin.tar.gz"
    sha256 "f25aa5b1c95714e0591ca65072fc735f04339405b1b57b391e6e8d776ceb07cf"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
