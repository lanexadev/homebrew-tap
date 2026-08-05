class Muxtop < Formula
  desc "A modern, multiplexed system monitor for the terminal"
  homepage "https://github.com/lucasschimmel/muxtop"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-aarch64-apple-darwin.tar.gz"
      sha256 "c37cbe3d5155863c83c261a957fff23e5753254cfbd27962fb6877ee5f9e7a35"
    end
    on_intel do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-x86_64-apple-darwin.tar.gz"
      sha256 "3f705a28b17f814ed46887741d99891ce58303e75e40d1670f93b579d34910e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fe9c0a553a4b8d2576b8f097af20acbec8b37e2724a74d2e9ddcb371ba72750d"
    end
    on_intel do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fadc011e3142ddfbec29f96dc2c2b2e41b0b011a7b1bb61e30d328f6e8d08346"
    end
  end

  def install
    bin.install "muxtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muxtop --version")
  end
end
