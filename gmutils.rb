class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.1-beta.2"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.1-beta.2-aarch64-apple-darwin.tar.gz"
    sha256 "c15c453aac4a5592bb251022b5fec6f419a255b700dd6f15d141f83627a32c80"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.1-beta.2-x86_64-apple-darwin.tar.gz"
    sha256 "9cd7a471c2779d73126f983336c8ffcd98095a6f25e77d28b31af4aac0b01c54"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
