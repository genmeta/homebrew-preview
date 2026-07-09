class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.0-beta.3"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.3-aarch64-apple-darwin.tar.gz"
    sha256 "c6416a9e3bfe366a2dd6e540d31f826fd845dd1986083e02ab01bfbad3491e93"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.3-x86_64-apple-darwin.tar.gz"
    sha256 "d522e0879793fef613f532a16efd94aa6a4a39c7fcd4ef31eb140010654301c0"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
