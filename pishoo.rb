class Pishoo < Formula
  desc "modern, secure, QUIC-powered web/proxy engine"
  version "0.9.0-preview.2"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/pishoo_0.9.0-preview.2-aarch64-apple-darwin.tar.gz"
    sha256 "208957048b17c4b100959c3d5e7f1bf3911b48d564ba222b6f450be78eb84381"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/pishoo_0.9.0-preview.2-x86_64-apple-darwin.tar.gz"
    sha256 "c976a1da0dafd36e44455fecb7fe35233c26a406a07d023db1e95cb2c9fdc073"
  end

  def install
    bin.install "pishoo"
    bin.install "pishoo-pack"
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
    assert_match "pishoo-pack", shell_output("#{bin}/pishoo-pack --help")
  end
end
