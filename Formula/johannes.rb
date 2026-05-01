class Johannes < Formula
  desc "Convertisseur de fichiers .docx vers le format Typst écrit en .NET 10"
  homepage "https://github.com/ymauray/johannes"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-osx-arm64.tar.gz"
      sha256 "92d4de6e8565b97abca8c58670a9405d42217814b6267c28229c86264ebebad5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-linux-x64.tar.gz"
      sha256 "d6913f8455c487218bd8a3757b3a5ed959e86a66cef341d04094772dbc44a3be"
    end
  end

  def install
    bin.install "johannes"
  end
end
