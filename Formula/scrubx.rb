class Scrubx < Formula
  desc "Utilitaire de verification de la validite d'un document Word"
  homepage "https://github.com/ymauray/scrubx"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/scrubx/releases/download/v#{version}/scrubx-osx-arm64.tar.gz"
      sha256 "4a046c6fe76d9ecbf277f31bce0dd7d92d2fde3003f5d085059724ba6bc8d3f8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/scrubx/releases/download/v#{version}/scrubx-linux-x64.tar.gz"
      sha256 "0f9a11df47cfcd792bbc4f6d54a1e332af518e2fde152c585d244d00606ce3e7"
    end
  end

  def install
    bin.install "Scrubx.Cli" => "scrubx"
  end
end
