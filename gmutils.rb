class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.9.0-preview.4"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.0-preview.4-aarch64-apple-darwin.tar.gz"
    sha256 "0aa073d5c96d18f38281884ac780b9b030abc8c25321cd159b80a01f2fe84490"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.0-preview.4-x86_64-apple-darwin.tar.gz"
    sha256 "2fad5fd74b77b5f1e9490f3782213ede191ba6b753edb1666b4f721c88a30daa"
  end

  def install
    bin.install "genmeta"
    libexec.install "install-workspace"
  end

  def post_install
    system libexec/"install-workspace", bin/"genmeta"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
