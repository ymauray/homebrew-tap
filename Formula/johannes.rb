class Johannes < Formula
  desc "Convertisseur de fichiers .docx vers le format Typst écrit en .NET 10"
  homepage "https://github.com/ymauray/johannes"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-osx-arm64.tar.gz"
      sha256 "808b7b3618d31ba617f92ef383fcee79f040acd1d639e83cab02c740182da80a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/johannes/releases/download/v#{version}/johannes-linux-x64.tar.gz"
      sha256 "cc8af813d8a707a6c6697147d3bf90c09c01568e76597a7b9823f46f69f6526c"
    end
  end

  def install
    bin.install "johannes"
  end
end
