class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.9.0-preview.5"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.0-preview.5-aarch64-apple-darwin.tar.gz"
    sha256 "ba0430ae9cac23af8e97f3390bd76bca6ab4d5cff25316fc4a6fbff802e46b68"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/gmutils-0.9.0-preview.5-x86_64-apple-darwin.tar.gz"
    sha256 "0cde93015e294c9d724e5d8650a0b14e279bf8c453fc32134c4453f2ac3bf5cb"
  end

  def install
    bin.install "genmeta", "jade"
  end

  test do
    system "#{bin}/genmeta", "version"
    system "#{bin}/jade", "--version"
  end
end
