class Johannes < Formula
  desc "Convertisseur de fichiers .docx vers le format Typst écrit en .NET 10"
  homepage "https://github.com/ymauray/johannes"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-osx-arm64.tar.gz"
      sha256 "4348bd4275322bddf7828893474b3cbd128f9d9b7116b65ee380f861e64de914"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-linux-x64.tar.gz"
      sha256 "2d8ea6158d8cb7e4e83e84590322e19c2c17f0e9dd9227fb57a6951a2645b4cc"
    end
  end

  def install
    bin.install "johannes"
  end
end
