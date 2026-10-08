class Johannes < Formula
  desc "Convertisseur de fichiers .docx vers le format Typst écrit en .NET 10"
  homepage "https://github.com/ymauray/johannes"
  version "0.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-osx-arm64.tar.gz"
      sha256 "d4a125beb0477426f5eb76af37318d2c2392255efe50e216730f5b7adbfd8813"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-linux-x64.tar.gz"
      sha256 "73845712fe8eb94c68673ad8f915ad72ba9ef0f5b2e62640516d79611598cc0c"
    end
  end

  def install
    bin.install "johannes"
  end
end
