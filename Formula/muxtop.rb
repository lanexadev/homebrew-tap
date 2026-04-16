class Muxtop < Formula
  desc "A modern, multiplexed system monitor for the terminal"
  homepage "https://github.com/lanexadev/muxtop"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-aarch64-apple-darwin.tar.gz"
      sha256 "8eb5700ec9679907b5135234c578acd1b16d0dffdcf56c8e98d8427bf377dec2"
    end
    on_intel do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-x86_64-apple-darwin.tar.gz"
      sha256 "ece7eeb1cfffdbd27501453c506c1e3be01a44d2eb6586c0e1c8a4e39be3fc12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-aarch64-unknown-linux-musl.tar.gz"
      sha256 "688db494ea8fdb6745f03fb414a23470cac6ab65283c92506ddc149f1cb61067"
    end
    on_intel do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-x86_64-unknown-linux-musl.tar.gz"
      sha256 "578336435b5d04bbbfaedcf3e9d8928b6378c77c1dddae34e3794c536ed4691b"
    end
  end

  def install
    bin.install "muxtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muxtop --version")
  end
end
