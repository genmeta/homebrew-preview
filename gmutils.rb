class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.9.2-preview.1"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.2-preview.1-aarch64-apple-darwin.tar.gz"
    sha256 "2418c7cd544cff67957386b0201e1018589537e3c3a24f8277efb9b5e2142234"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.2-preview.1-x86_64-apple-darwin.tar.gz"
    sha256 "56e28060762185a62c59868122d99a15d48997fe66ea57ca50d70dc05b5def53"
  end

  def install
    bin.install "genmeta", "jade"
  end

  test do
    system "#{bin}/genmeta", "version"
    system "#{bin}/jade", "--version"
  end
end
