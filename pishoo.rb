class Pishoo < Formula
  desc "modern, secure, QUIC-powered web/proxy engine"
  version "0.9.2-preview.2"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/pishoo_0.9.2-preview.2-aarch64-apple-darwin.tar.gz"
    sha256 "133e7a81194ea2114e5c1e3385be957126ea627d6851f7e76b647c3fb2635865"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/pishoo_0.9.2-preview.2-x86_64-apple-darwin.tar.gz"
    sha256 "c384263dd42f9b171a62c2818de082f15a3d1e46962ead6dd332f03c1c218e52"
  end

  def install
    bin.install "pishoo"
  end

  def caveats
    <<~EOS
      Run Pishoo as the user who owns ~/.dhttp.
      Identity directories and current databases are initialized at first startup.
      Existing data is preserved; unsupported legacy databases stop startup with a diagnostic.
      To run as the current user, use: brew services start pishoo
      To install Workspace after configuring an identity and starting Pishoo:
        brew install gmutils
        genmeta install workspace --id YOUR_IDENTITY
      Run genmeta as the account that owns the identity. App dependencies install automatically.
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
