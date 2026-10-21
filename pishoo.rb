class Pishoo < Formula
  desc "modern, secure, QUIC-powered web/proxy engine"
  version "0.9.0-preview.4"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/pishoo_0.9.0-preview.4-aarch64-apple-darwin.tar.gz"
    sha256 "af64f0dce56c777d772857b9007d3ac9a167eecc8e812d0e83a852c5c736fdac"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/pishoo_0.9.0-preview.4-x86_64-apple-darwin.tar.gz"
    sha256 "416b3d22d50651d3dbc76a0c0d074b8b013b805933bf3573c2cb90246c3c26db"
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
