class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.0-beta.8"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.8-aarch64-apple-darwin.tar.gz"
    sha256 "f2a48d6e59cc42839870428a946ab725ce15d3f50029df13a68e5e6ed87898b5"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.8-x86_64-apple-darwin.tar.gz"
    sha256 "182c3af382812b5f102a01368ccdc554f5f601c6ce73bbe2c52f6cfe2eed6043"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
