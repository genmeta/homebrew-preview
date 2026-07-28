class Pishoo < Formula
  desc "modern, secure, QUIC-powered web/proxy engine"
  version "0.8.0-beta.7"
  homepage "https://www.dhttp.net"
  license "Apache-2.0"

  on_arm do
    url "https://download.dhttp.net/homebrew/preview/pishoo_0.8.0-beta.7-aarch64-apple-darwin.tar.gz"
    sha256 "6e491c6e286a60748ccfc1f5e165431a40222ad67ed37f78f2ab6bcab1d01d16"
  end

  on_intel do
    url "https://download.dhttp.net/homebrew/preview/pishoo_0.8.0-beta.7-x86_64-apple-darwin.tar.gz"
    sha256 "73cc78886f1822b4f659deddf796d4b3ac7e5179014ee130db3c80f2410a3610"
  end

  def install
    bin.install "pishoo"
    libexec.install "pishoo-worker"
    libexec.install "pishoo-ssh-session"


    (etc/"dhttp").mkpath
    chmod 0755, etc/"dhttp"
    etc.install "pishoo.conf" => "dhttp/pishoo.conf" unless File.exist? "#{etc}/dhttp/pishoo.conf"
    etc.install "mime.types"  => "dhttp/mime.types"  unless File.exist? "#{etc}/dhttp/mime.types"
  end

  def caveats
    <<~EOS
      Configuration files are installed at:
        #{etc}/dhttp/pishoo.conf

      On macOS, default global-home mode loads worker users from the existing _www group.
      This formula does not create or modify system groups. To opt the current user into
      default pishoo worker discovery, run:
        sudo dseditgroup -o edit -a "$USER" -t user _www
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
    system "#{bin}/pishoo", "-V"
  end
end
