class Puppet < Formula
  desc "puppet (browser) control: agents drive your real chrome through a small extension and a rust binary"
  homepage "https://github.com/romirr/puppet"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/romirr/puppet/releases/download/v0.1.0/puppet-aarch64-apple-darwin.tar.gz"
      sha256 "2e311e4959359937f6344ab9cd6f78e249155b8b89fd2ade6e9e8dbc0379d190"
    end
    on_intel do
      url "https://github.com/romirr/puppet/releases/download/v0.1.0/puppet-x86_64-apple-darwin.tar.gz"
      sha256 "105edfa33e998d788daef76934983e632f180fa70e5d106af20027267a53e6aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/romirr/puppet/releases/download/v0.1.0/puppet-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "666a87103b9dfd7301c1361941a8ab71324b7f0e0f45f44ad3ae03e690083616"
    end
    on_intel do
      url "https://github.com/romirr/puppet/releases/download/v0.1.0/puppet-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f833914a2b5f2bd78d91b03cc8da4e6efe82d6b8a4a79aec4c495d34e89d45d5"
    end
  end

  def install
    bin.install "puppet"
  end

  def caveats
    <<~EOS
      puppet needs a browser extension and a native host registration, once:
        puppet install
      then in chrome: chrome://extensions, developer mode, load unpacked (the folder puppet install prints).
      check with:
        puppet doctor
      mcp clients: puppet mcp --config <client>
    EOS
  end

  test do
    assert_match "puppet #{version}", shell_output("#{bin}/puppet --version")
  end
end
