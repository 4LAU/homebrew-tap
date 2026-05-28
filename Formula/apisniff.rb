# frozen_string_literal: true

class Apisniff < Formula
  desc "API recon: preflight defenses, traffic capture, and spec extraction"
  homepage "https://github.com/4LAU/apisniff"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/4LAU/apisniff/releases/download/v0.2.1/apisniff_0.2.1_darwin_arm64.tar.gz"
      sha256 "0bdda2506eae036f2b78c34fa8973b109a6dbafe0d3fe27f044727ae2429afa3"
    else
      url "https://github.com/4LAU/apisniff/releases/download/v0.2.1/apisniff_0.2.1_darwin_amd64.tar.gz"
      sha256 "f6d5fc667c3fec8a9bdf8f74cf89c0ee1417a94a912f973e0a830c1a61a92222"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/4LAU/apisniff/releases/download/v0.2.1/apisniff_0.2.1_linux_arm64.tar.gz"
      sha256 "cf59baff8e2c49c44052dbcc021862d6c027510fb76e00046cb18ddd133c212f"
    else
      url "https://github.com/4LAU/apisniff/releases/download/v0.2.1/apisniff_0.2.1_linux_amd64.tar.gz"
      sha256 "6b9f72155050c480affd64385e63003dde257ab939278b892dddd39ecd2d9015"
    end
  end

  def install
    bin.install "apisniff"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/apisniff --help")
  end
end
