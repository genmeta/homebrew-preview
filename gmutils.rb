class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.9.0-preview.1"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.0-preview.1-aarch64-apple-darwin.tar.gz"
    sha256 "9123dbed5bdd94c291430718d73b9c75dd673f4239e9290128d72a9a314282e3"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.0-preview.1-x86_64-apple-darwin.tar.gz"
    sha256 "d51e879416ab08ab83533a69f84d89e2158a60e7423cb058d51462c60824bb6c"
  end

  def install
    bin.install "genmeta"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
