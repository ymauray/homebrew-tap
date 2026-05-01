class Paige < Formula
  desc "Un outil pour générer des epubs écrit en .NET 10"
  homepage "https://github.com/ymauray/paige"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/paige/releases/download/v#{version}/paige-osx-arm64.tar.gz"
      sha256 "e0fddff6d79f0a01d420cac687d945200217e981aca47ffa5884a5c297a1da60"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/paige/releases/download/v#{version}/paige-linux-x64.tar.gz"
      sha256 "8a2f6cd8e016db0e66afb9963fd20bad4a73558abdffa1b336f6c055a0fed4f3"
    end
  end

  def install
    bin.install "paige"
  end
end
