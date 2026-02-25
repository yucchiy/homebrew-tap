class Unicli < Formula
  desc "CLI tool to control Unity Editor from the terminal"
  homepage "https://github.com/yucchiy/UniCli"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yucchiy/UniCli/releases/download/v#{version}/unicli-osx-arm64.tar.gz"
      sha256 "5f63f2c3a4fa2d4547dcf6d643275d13c51745888156a6203689b30952c63001"
    else
      url "https://github.com/yucchiy/UniCli/releases/download/v#{version}/unicli-osx-x64.tar.gz"
      sha256 "fd051e9409471df4e10226edb45b280b021b4d73d837867778e8ecbf03783607"
    end
  end

  def install
    bin.install "unicli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unicli --version")
  end
end
