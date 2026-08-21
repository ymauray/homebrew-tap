class Johannes < Formula
  desc "Convertisseur de fichiers .docx vers le format Typst écrit en .NET 10"
  homepage "https://github.com/ymauray/johannes"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-osx-arm64.tar.gz"
      sha256 "e64ddaae95be601039203c23edee68a4ab32785e79efcad3af0e4fd704a22355"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-linux-x64.tar.gz"
      sha256 "cb0787cbc54dd4aa83016bb1be607a73559e324a2bf1d285932413bc682de65c"
    end
  end

  def install
    bin.install "johannes"
  end
end
