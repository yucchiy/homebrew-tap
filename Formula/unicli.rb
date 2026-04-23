class Unicli < Formula
  desc "CLI tool to control Unity Editor from the terminal"
  homepage "https://github.com/yucchiy/UniCli"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yucchiy/UniCli/releases/download/v#{version}/unicli-osx-arm64.tar.gz"
      sha256 "3d32759f22af1a7dac0a15b728744aaec217edba5cf8bbfbc487248869bc4e01"
    else
      url "https://github.com/yucchiy/UniCli/releases/download/v#{version}/unicli-osx-x64.tar.gz"
      sha256 "e193afb247c38d6c411755fff5d2f1f518941fc494872d179937ebde16280ae5"
    end
  end

  def install
    bin.install "unicli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unicli --version")
  end
end
