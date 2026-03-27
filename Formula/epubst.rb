class Epubst < Formula
  desc "Compilateur Markdown → ePub3, outil en ligne de commande .NET"
  homepage "https://github.com/amaurybennett/epubst"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amaurybennett/epubst/releases/download/v#{version}/epubst-osx-arm64.tar.gz"
      sha256 "7725ae4a21880ccb25db34d0e2ee4d4a691217fe4491826e3c4fb9e6e9f8baeb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/amaurybennett/epubst/releases/download/v#{version}/epubst-linux-x64.tar.gz"
      sha256 "d8a6774378a9484ab84ee52c007788d700003c6e18576ad70791ae4dfb9b9d4f"
    end
  end

  def install
    bin.install "epubst"
  end
end
