class Pishoo < Formula
  desc "modern, secure, QUIC-powered web/proxy engine"
  version "0.9.0-preview.1"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/pishoo_0.9.0-preview.1-aarch64-apple-darwin.tar.gz"
    sha256 "0492488125644397bd7830afd1c404a9447ad4558255c10c88839f5d8ccf4bab"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/pishoo_0.9.0-preview.1-x86_64-apple-darwin.tar.gz"
    sha256 "4469c7b074d0450bcef8bf08b1ee86dcd466ed36882d7eb2701c4d1853abe152"
  end

  def install
    bin.install "pishoo"
  end

  def caveats
    <<~EOS
      Run Pishoo as the user who owns ~/.dhttp, or set DHTTP_HOME explicitly.
      Identity directories and current databases are initialized at first startup.
      Existing data is preserved; unsupported legacy databases stop startup with a diagnostic.
      To run as the current user, use: brew services start pishoo
    EOS
  end

  service do
    run [opt_bin/"pishoo"]
    keep_alive true
    log_path var/"log/pishoo.log"
    error_log_path var/"log/pishoo.error.log"
    working_dir HOMEBREW_PREFIX
  end

  test do
    assert_predicate bin/"pishoo", :executable?
  end
end
