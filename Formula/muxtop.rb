class Muxtop < Formula
  desc "A modern, multiplexed system monitor for the terminal"
  homepage "https://github.com/lanexadev/muxtop"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-aarch64-apple-darwin.tar.gz"
      sha256 "278868062f98337547394088e92dc80f838c577f5db72c90caae8fba1a0e21ff"
    end
    on_intel do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-x86_64-apple-darwin.tar.gz"
      sha256 "2aabc96cb04c1ccdd0bd8d980bb4cc5dacbfbe37d47245634984508877a8dbc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa5954b43c74c6432b82f5d4c5a5ac38310d42e6cdbd2d1b1a5c92f6566b6aa3"
    end
    on_intel do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a4c10c39ae210b1d2a24b8765612bd29b9b22f9212a6eebd95b7262492ebf56"
    end
  end

  def install
    bin.install "muxtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muxtop --version")
  end
end
