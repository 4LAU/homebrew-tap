# frozen_string_literal: true

class Apisniff < Formula
  desc "API recon: preflight defenses, traffic capture, and spec extraction"
  homepage "https://github.com/4LAU/apisniff"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/4LAU/apisniff/releases/download/v0.2.0/apisniff_0.2.0_darwin_arm64_v8.0.tar.gz"
      sha256 "a95363d96f801cb7fe6d65324a5016c77c12097fd09ee58849643fabfaba49e7"
    else
      url "https://github.com/4LAU/apisniff/releases/download/v0.2.0/apisniff_0.2.0_darwin_amd64_v1.tar.gz"
      sha256 "6a6daae589039e397f1348a46bc03b83a9afc8b1ed9e5f0abd95a373ade4bf37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/4LAU/apisniff/releases/download/v0.2.0/apisniff_0.2.0_linux_arm64_v8.0.tar.gz"
      sha256 "ae70623707f26316390c859d8fb3f42d8cf9fcf90d92309125aaf1e13b10fa27"
    else
      url "https://github.com/4LAU/apisniff/releases/download/v0.2.0/apisniff_0.2.0_linux_amd64_v1.tar.gz"
      sha256 "4982e17cf86335eb50ee635cde2fe875932fefd4bf6c5f1a70c3427fcdbe882e"
    end
  end

  def install
    bin.install "apisniff"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/apisniff --help")
  end
end
