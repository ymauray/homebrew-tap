class Epubst < Formula
  desc "Compilateur Markdown → ePub3, outil en ligne de commande .NET"
  homepage "https://github.com/amaurybennett/epubst"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amaurybennett/epubst/releases/download/v#{version}/epubst-osx-arm64.tar.gz"
      sha256 "4050ef51801eac8065eb4c7f077ab36b80a502890fc8266afae524e554c67ce4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/amaurybennett/epubst/releases/download/v#{version}/epubst-linux-x64.tar.gz"
      sha256 "e63162b5e46d4971b93f4b70b99f2c2c6a9e93929869632ceda54ff7836f29a6"
    end
  end

  def install
    bin.install "epubst"
  end
end
