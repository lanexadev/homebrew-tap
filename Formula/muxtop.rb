class Muxtop < Formula
  desc "A modern, multiplexed system monitor for the terminal"
  homepage "https://github.com/lucasschimmel/muxtop"
  version "0.4.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-aarch64-apple-darwin.tar.gz"
      sha256 "0a61c926ced696bb78623e72d3de4453b9bd207a576cc159e44eab4aab044d5e"
    end
    on_intel do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-x86_64-apple-darwin.tar.gz"
      sha256 "a996106aebb1dca1db69b98b555fb2cb760dc5e61be0ffcbb8a007b452863ae8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bf4400a50a79b928a2707c6b2b990e80e0b58ee34511908885b5407f02b39215"
    end
    on_intel do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e3557bccf9877bf5dac878175e78868ae6f4490831f264894e3030c13d8de1d"
    end
  end

  def install
    bin.install "muxtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muxtop --version")
  end
end
