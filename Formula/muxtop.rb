class Muxtop < Formula
  desc "A modern, multiplexed system monitor for the terminal"
  homepage "https://github.com/lucasschimmel/muxtop"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-aarch64-apple-darwin.tar.gz"
      sha256 "707aa1050e01766b93a114aba22fb794dfaf55851bf8a9ee7e76a3183359d254"
    end
    on_intel do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-x86_64-apple-darwin.tar.gz"
      sha256 "becd624bea8f5d51482194821610e5c930b09ac2f6e7657a41f17c53ab7133c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-aarch64-unknown-linux-musl.tar.gz"
      sha256 "25aa78c071f43a648ee1ea04d8bff0002ea1e8f6165e37e8287507dc5d37814f"
    end
    on_intel do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-x86_64-unknown-linux-musl.tar.gz"
      sha256 "afde15bfd6d0387ecb02f5556312c4bddb8cd0506592061e6bcb73ef452e484d"
    end
  end

  def install
    bin.install "muxtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muxtop --version")
  end
end
