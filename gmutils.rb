class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.0-beta.5"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.5-aarch64-apple-darwin.tar.gz"
    sha256 "24e749b3adc48eaac207b1a3a66254f71e3cf3edb60be83adc5e57de2c7e452a"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.5-x86_64-apple-darwin.tar.gz"
    sha256 "fb6e42d01675697f9f334990d02bc484fcd950ff0c84a1338cc05b9756078bcb"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
