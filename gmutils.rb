class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.9.2-preview.2"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.2-preview.2-aarch64-apple-darwin.tar.gz"
    sha256 "856e4f6225edaab2fca4857099929fbd9f182275c422df36ca02678580a57179"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.2-preview.2-x86_64-apple-darwin.tar.gz"
    sha256 "c7f2ff34007b9a1d695c3ab5361e356a3521e962f87b9c4e5fcee421e2bd0d2a"
  end

  def install
    bin.install "genmeta", "jade"
  end

  test do
    system "#{bin}/genmeta", "version"
    system "#{bin}/jade", "--version"
  end
end
