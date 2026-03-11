class Unicli < Formula
  desc "CLI tool to control Unity Editor from the terminal"
  homepage "https://github.com/yucchiy/UniCli"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yucchiy/UniCli/releases/download/v#{version}/unicli-osx-arm64.tar.gz"
      sha256 "90a59d2e33504acb201b52b49873bff33dc1d2840bdd243f0514bcc077ff48f9"
    else
      url "https://github.com/yucchiy/UniCli/releases/download/v#{version}/unicli-osx-x64.tar.gz"
      sha256 "55f10d7205f9bf424f7d0d47dda6dbce810915c8406c63bcb823bd0f34cfc06e"
    end
  end

  def install
    bin.install "unicli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unicli --version")
  end
end
