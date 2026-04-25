class Muxtop < Formula
  desc "A modern, multiplexed system monitor for the terminal"
  homepage "https://github.com/lanexadev/muxtop"
  version "0.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-aarch64-apple-darwin.tar.gz"
      sha256 "01d26cc68de66e319ad53fa392d7fcc6c709792c6870bb71c91360880696a637"
    end
    on_intel do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-x86_64-apple-darwin.tar.gz"
      sha256 "2e84081a610f08d2eb298d86ab40ecb046b107ce2756aa768e8dd28710108cc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1dbcaa7e6c8c474b62bb65ecc9e96172358fc71b720a8b519d78cba977cdd3ad"
    end
    on_intel do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a47902dc115e293d990e317364fef75d2dacbc52bf27ac847baa494ffdf3231d"
    end
  end

  def install
    bin.install "muxtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muxtop --version")
  end
end
