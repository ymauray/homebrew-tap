class Johannes < Formula
  desc "Convertisseur de fichiers .docx vers le format Typst écrit en .NET 10"
  homepage "https://github.com/ymauray/johannes"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-osx-arm64.tar.gz"
      sha256 "6d0c989e0d2fe8f9e87a1606f2ccc88393b1f0c8063441c25c1fc27595209c75"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-linux-x64.tar.gz"
      sha256 "2eedda05cefb9eb98d9c4c0f5f6b525ae5e679dc749ea4b32d7501af05f5998f"
    end
  end

  def install
    bin.install "johannes"
  end
end
