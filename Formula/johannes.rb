class Johannes < Formula
  desc "Convertisseur de fichiers .docx vers le format Typst écrit en .NET 10"
  homepage "https://github.com/ymauray/johannes"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/excelst-osx-arm64.tar.gz"
      sha256 "7725ae4a21880ccb25db34d0e2ee4d4a691217fe4491826e3c4fb9e6e9f8baeb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/excelst-linux-x64.tar.gz"
      sha256 "d8a6774378a9484ab84ee52c007788d700003c6e18576ad70791ae4dfb9b9d4f"
    end
  end

  def install
    bin.install "johannes"
  end
end
