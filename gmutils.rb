class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.0-beta.6"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.6-aarch64-apple-darwin.tar.gz"
    sha256 "f1c637df5c6e3dc84e6f90ddbc9495461c8f1a783711cea9c540b31aba79be3f"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.0-beta.6-x86_64-apple-darwin.tar.gz"
    sha256 "8558804d3d0be2805d44d065d4827e77b8ecfb46676b6f294003c0ed567d9798"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
