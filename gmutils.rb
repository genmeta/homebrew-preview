class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.9.0-preview.3"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.0-preview.3-aarch64-apple-darwin.tar.gz"
    sha256 "185b2ced4c10817f798cf648828d1dfeec7af0dcd90118fc013c2fe543310085"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.0-preview.3-x86_64-apple-darwin.tar.gz"
    sha256 "cf3de2f572007094279c29c8960ab258387e4f327aae583d17d4afd2d16de5bb"
  end

  def install
    bin.install "genmeta"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
