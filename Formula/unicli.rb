class Unicli < Formula
  desc "CLI tool to control Unity Editor from the terminal"
  homepage "https://github.com/yucchiy/UniCli"
  version "1.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yucchiy/UniCli/releases/download/v#{version}/unicli-osx-arm64.tar.gz"
      sha256 "6edad4bae6f1082b1ad567d2e790e624f119dd909a6bf5f6e028895d20c21384"
    else
      url "https://github.com/yucchiy/UniCli/releases/download/v#{version}/unicli-osx-x64.tar.gz"
      sha256 "a0f4ef1d5e46bba427aa859e63a3ff22521733fc3b37997354234b989d480b08"
    end
  end

  def install
    bin.install "unicli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unicli --version")
  end
end
