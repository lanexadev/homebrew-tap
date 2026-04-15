class Muxtop < Formula
  desc "A modern, multiplexed system monitor for the terminal"
  homepage "https://github.com/lanexadev/muxtop"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-aarch64-apple-darwin.tar.gz"
      sha256 "a4a8bbd4fa12a7b25b07dcca41a2cb7f529c2f35e8ababd87ee0c33a5a0cfa83"
    end
    on_intel do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-x86_64-apple-darwin.tar.gz"
      sha256 "d0535d18d347c9011dc510379704eed76e2469260ca40e9dbb169eb2248d2869"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-aarch64-unknown-linux-musl.tar.gz"
      sha256 "51a3465e4eaae37a3e50eb9e34c894f9d5997eed950f3326df044f22ea3a0921"
    end
    on_intel do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d25e5cb7490898835fc6b3f1ad9cdb9968d0d99e590653df6fb4c4d7446cbcc"
    end
  end

  def install
    bin.install "muxtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muxtop --version")
  end
end
