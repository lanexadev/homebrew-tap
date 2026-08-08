class Muxtop < Formula
  desc "A modern, multiplexed system monitor for the terminal"
  homepage "https://github.com/lucasschimmel/muxtop"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-aarch64-apple-darwin.tar.gz"
      sha256 "462118b3ff3264f28790bf120a84486c8b08e41610efb0fe0dfe169ae33cc55c"
    end
    on_intel do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-x86_64-apple-darwin.tar.gz"
      sha256 "df4837b80d805ba7430430cfd39685d058315927ecad78b9866c2da714fb9a64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4dc0dfdf82a4d5008dd49929023f93673b9d89c06c65540742c95797ea3d2c4b"
    end
    on_intel do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f879cac9b13810b6c006e2a93a4d9541134cbe588fdf93a0fd0ab3879632912c"
    end
  end

  def install
    bin.install "muxtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muxtop --version")
  end
end
