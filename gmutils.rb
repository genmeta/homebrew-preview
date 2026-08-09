class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.8.1-beta.3"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.1-beta.3-aarch64-apple-darwin.tar.gz"
    sha256 "f58d355b04dfe3aeca968bbf52487e175a1e3ff8d8b575caeff953eb14b15c2f"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.8.1-beta.3-x86_64-apple-darwin.tar.gz"
    sha256 "17a518872fd06cbea4bb2309e161b6a7ecaabafbc06429f352042f9e70caa8b0"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh.sh"
  end

  test do
    system "#{bin}/genmeta", "version"
  end
end
