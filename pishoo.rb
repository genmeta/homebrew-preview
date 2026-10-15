class Pishoo < Formula
  desc "modern, secure, QUIC-powered web/proxy engine"
  version "0.9.0-preview.3"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/pishoo_0.9.0-preview.3-aarch64-apple-darwin.tar.gz"
    sha256 "4ba98a103df00e59b91aa8879697d75eac2ff55a4e37c98d7798472f56c0549d"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/pishoo_0.9.0-preview.3-x86_64-apple-darwin.tar.gz"
    sha256 "75e586b51f64a46141ef8399e7742f3267baeca6a20a4915e8f8d75983f77d2e"
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
        genmeta package install std.dhttp.net/workspace --id YOUR_IDENTITY
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
