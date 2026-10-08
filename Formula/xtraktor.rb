class Xtraktor < Formula
  desc "Extracteur et comparateur de texte de romans (PDF, EPUB, Word) écrit en .NET 10"
  homepage "https://github.com/ymauray/xtraktor"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/xtraktor/releases/download/v#{version}/xtraktor-osx-arm64.tar.gz"
      sha256 "3c4f19949eb953f00dc7f1bf4a8235f9024f5f1077c168f5c465a9a36e01fb55"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/xtraktor/releases/download/v#{version}/xtraktor-linux-x64.tar.gz"
      sha256 "788e4c4c66e4a1fbc43ddecbf6bb3d78f96e3b45ce36fc6345b5e92b523efb1c"
    end
  end

  def install
    bin.install "xtraktor"
  end
end
