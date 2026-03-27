class Epubst < Formula
  desc "Compilateur Markdown → ePub3, outil en ligne de commande .NET"
  homepage "https://github.com/amaurybennett/epubst"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amaurybennett/epubst/releases/download/v#{version}/epubst-osx-arm64.tar.gz"
      sha256 "9a4a468ef52b38b76dcdf08d57456647807d7916cda086159b12efca6a9ae700"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/amaurybennett/epubst/releases/download/v#{version}/epubst-linux-x64.tar.gz"
      sha256 "d39c6be7d3db44296d9431e4d8ce75f553bfe142734199757e3fb2d6c943ab20"
    end
  end

  def install
    bin.install "epubst"
  end
end
