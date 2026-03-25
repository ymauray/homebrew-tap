class Excelst < Formula
  desc "CLI tool to generate Excel files from .exl source files"
  homepage "https://github.com/ymauray/excelst"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/excelst/releases/download/v#{version}/excelst-osx-arm64.tar.gz"
      sha256 "ea56268b3743ba7efdd9590f17ded3e7bcf283e0532316ac48821b56fe904548"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/excelst/releases/download/v#{version}/excelst-linux-x64.tar.gz"
      sha256 "ec9862d88270b9ad39a1d6df19933047d21477429d9cb404cc73e2d7cb89fd91"
    end
  end

  def install
    bin.install "excelst"
  end
end
