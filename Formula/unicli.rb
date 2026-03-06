class Unicli < Formula
  desc "CLI tool to control Unity Editor from the terminal"
  homepage "https://github.com/yucchiy/UniCli"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yucchiy/UniCli/releases/download/v#{version}/unicli-osx-arm64.tar.gz"
      sha256 "f101e7031ac74a2eba34abd299cff8f4373d885ed2047152d17277de338cf2d7"
    else
      url "https://github.com/yucchiy/UniCli/releases/download/v#{version}/unicli-osx-x64.tar.gz"
      sha256 "2353c213e9d2bfa7505369e5001467e2a9fae73c02ee98e253084fa9597e9ff2"
    end
  end

  def install
    bin.install "unicli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unicli --version")
  end
end
