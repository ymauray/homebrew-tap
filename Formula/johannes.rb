class Johannes < Formula
  desc "Convertisseur de fichiers .docx vers le format Typst écrit en .NET 10"
  homepage "https://github.com/ymauray/johannes"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-osx-arm64.tar.gz"
      sha256 "2441659879ff63feb86363ba014c3ec8ba75ac9b0c8c13335665d00c64763f9b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-linux-x64.tar.gz"
      sha256 "a2b5486547a2fcecb7f5f4380a5b3be7c45e99c36fcc3b757a738021eaa6c2d9"
    end
  end

  def install
    bin.install "johannes"
  end
end
