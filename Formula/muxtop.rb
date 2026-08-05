class Muxtop < Formula
  desc "A modern, multiplexed system monitor for the terminal"
  homepage "https://github.com/lucasschimmel/muxtop"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-aarch64-apple-darwin.tar.gz"
      sha256 "df3b1ce9be8ecdb903c6f1f00213ba2a98a598a603bdeae97d7c9e99564f0048"
    end
    on_intel do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-x86_64-apple-darwin.tar.gz"
      sha256 "18174028a75266736329c76af3697b1e768721882f757f25fcc85b3047ae353a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-aarch64-unknown-linux-musl.tar.gz"
      sha256 "44955fe69d6ab7f532ec8fe3449049ee3671cfbd7140538c1a545631aa975b18"
    end
    on_intel do
      url "https://github.com/lucasschimmel/muxtop/releases/download/v#{version}/muxtop-x86_64-unknown-linux-musl.tar.gz"
      sha256 "374fd747cfae44ed03c40017a991899449244b8c9a34b65c2f62b02cca525f7e"
    end
  end

  def install
    bin.install "muxtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muxtop --version")
  end
end
