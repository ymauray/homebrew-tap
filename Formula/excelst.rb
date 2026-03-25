class Excelst < Formula
  desc "CLI tool to generate Excel files from .exl source files"
  homepage "https://github.com/ymauray/excelst"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/excelst/releases/download/v#{version}/excelst-osx-arm64.tar.gz"
      sha256 "21740406394491174c3706a96022f512da6f728d76180ebb8cc9230e697129ee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/excelst/releases/download/v#{version}/excelst-linux-x64.tar.gz"
      sha256 "05c8bb6c2a85cc68f35c392eb1ec4a63aab09af490d01535a0919cdf6cf608e8"
    end
  end

  def install
    bin.install "excelst"
  end
end
