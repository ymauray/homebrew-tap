class Johannes < Formula
  desc "Convertisseur de fichiers .docx vers le format Typst écrit en .NET 10"
  homepage "https://github.com/ymauray/johannes"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-osx-arm64.tar.gz"
      sha256 "ac5bd6323f057c7028826181744fd1ce1b13a73e41bd320f35f4955881c11fae"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-linux-x64.tar.gz"
      sha256 "974e3e04bff8d166eab8294712a7b908d21149302908c2e2bef55526b0f1e21f"
    end
  end

  def install
    bin.install "johannes"
  end
end
