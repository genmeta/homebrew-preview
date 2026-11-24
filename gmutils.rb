class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.9.2-preview.3"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.2-preview.3-aarch64-apple-darwin.tar.gz"
    sha256 "7381f8c5fda743c496b7bfb4f517c0d9c1309e89247c089d83123997feed6cae"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.2-preview.3-x86_64-apple-darwin.tar.gz"
    sha256 "eb219c7587bff52c495e420974f85ace46eeb4b194bf0b6a892698aa982d4e20"
  end

  def install
    bin.install "genmeta", "jade"
  end

  test do
    system "#{bin}/genmeta", "version"
    system "#{bin}/jade", "--version"
  end
end
