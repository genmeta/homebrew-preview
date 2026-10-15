class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.9.0-preview.2"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.0-preview.2-aarch64-apple-darwin.tar.gz"
    sha256 "fea7540ffd0b510c6d96e0a1eda9d28e610ae71dec78a482e55af16d8395f66d"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.0-preview.2-x86_64-apple-darwin.tar.gz"
    sha256 "4753ffa4469075e68decb40b2e645e20821d7577af7d2e979933bff2766f19fc"
  end

  def install
    bin.install "genmeta"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
