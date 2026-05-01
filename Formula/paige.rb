class Paige < Formula
  desc "Un outil pour générer des epubs écrit en .NET 10"
  homepage "https://github.com/ymauray/paige"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/paige/releases/download/v#{version}/paige-osx-arm64.tar.gz"
      sha256 "847433ca3fabccd67c9092bc84d0a383e31c1b36c0d6b6c401b3d1ce65957858"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/paige/releases/download/v#{version}/paige-linux-x64.tar.gz"
      sha256 "e77083446142420b20ab9472fb226bcc1c923bbe060a5ac5fbb8a3c3aaabdadc"
    end
  end

  def install
    bin.install "paige"
  end
end
