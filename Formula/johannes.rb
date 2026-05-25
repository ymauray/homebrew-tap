class Johannes < Formula
  desc "Convertisseur de fichiers .docx vers le format Typst écrit en .NET 10"
  homepage "https://github.com/ymauray/johannes"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-osx-arm64.tar.gz"
      sha256 "b5ef62f5eb50165ef93d2efabd3e6f4b39c14be2272cd75f030fdea59d1440f6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-linux-x64.tar.gz"
      sha256 "0088adccaa3c7089f46b09448fd21af6b9056c9ce01b20c2b00c24cf07e4d5db"
    end
  end

  def install
    bin.install "johannes"
  end
end
