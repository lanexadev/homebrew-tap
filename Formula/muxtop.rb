class Muxtop < Formula
  desc "A modern, multiplexed system monitor for the terminal"
  homepage "https://github.com/lanexadev/muxtop"
  version "0.2.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-aarch64-apple-darwin.tar.gz"
      sha256 "c7993cb7aa245bbfc141acd177894998caaa31b22b181f2c558b107e7f911308"
    end
    on_intel do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-x86_64-apple-darwin.tar.gz"
      sha256 "a7f6be1ba1afe8082d6dce3424522352be1cf849dcdf61acb44f343b6679956d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9f85c52e2fb1d8e718616f108492463ef7c95f57502b33d63dff75af66f065e6"
    end
    on_intel do
      url "https://github.com/lanexadev/muxtop/releases/download/v#{version}/muxtop-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4da355ac34d27770b3677f63815564ae0478e1534f44d59e1defebb90d671ecd"
    end
  end

  def install
    bin.install "muxtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muxtop --version")
  end
end
