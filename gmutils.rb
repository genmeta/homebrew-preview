class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.9.1-preview.1"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.1-preview.1-aarch64-apple-darwin.tar.gz"
    sha256 "a75e069f4cbfcbc4bac06323df958209b9111390de25f48aa529b45168ecab61"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.1-preview.1-x86_64-apple-darwin.tar.gz"
    sha256 "5890a7f44d04ead19fdc45dde8e24a98a67743881718212ee72b8fa1fca085a5"
  end

  def install
    bin.install "genmeta", "jade"
  end

  test do
    system "#{bin}/genmeta", "version"
    system "#{bin}/jade", "--version"
  end
end
