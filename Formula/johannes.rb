class Johannes < Formula
  desc "Convertisseur de fichiers .docx vers le format Typst écrit en .NET 10"
  homepage "https://github.com/ymauray/johannes"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-osx-arm64.tar.gz"
      sha256 "e0fddff6d79f0a01d420cac687d945200217e981aca47ffa5884a5c297a1da60"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-linux-x64.tar.gz"
      sha256 "8a2f6cd8e016db0e66afb9963fd20bad4a73558abdffa1b336f6c055a0fed4f3"
    end
  end

  def install
    bin.install "johannes"
  end
end
