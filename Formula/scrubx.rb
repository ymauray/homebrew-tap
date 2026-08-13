class Scrubx < Formula
  desc "Utility for checking the validity of Word documents"
  homepage "https://github.com/ymauray/scrubx"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ymauray/scrubx/releases/download/v#{version}/Scrubx.Cli-osx-arm64.zip"
      sha256 "ffaf91821db021c36ff7819295e36d52c3e447f4a3fdefcceab0a85a71a216ca"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ymauray/scrubx/releases/download/v#{version}/Scrubx.Cli-linux-x64.zip"
      sha256 "fe76f7d6df5144abf6ce7f516aaa2fd597a77b109f2f6c1f56172ac4e8ed7a03"
    end
  end

  def install
    bin.install Dir["Scrubx.Cli-*/Scrubx.Cli"].first => "scrubx"
  end
end