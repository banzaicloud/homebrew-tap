# This file was generated by GoReleaser. DO NOT EDIT.
class BackyardsCliAT150 < Formula
  desc "Command-line interface for Backyards"
  homepage "https://banzaicloud.com/"
  version "1.5.0"
  bottle :unneeded

  if OS.mac?
    url "https://banzaicloud.com/downloads/backyards-cli/1.5.0/dist/backyards_1.5.0_darwin_amd64.tar.gz"
    sha256 "79ce3386adce21bcebc09565a915ad09d713181df2488232eff76264bfa09738"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://banzaicloud.com/downloads/backyards-cli/1.5.0/dist/backyards_1.5.0_linux_amd64.tar.gz"
      sha256 "eb5bccaa88762665896b70d5f6d1e3a6c25fb89626d942896abe2dcbd4d6d438"
    end
  end

  def install
    bin.install "backyards"
  end

  test do
    system "#{bin}/backyards --version"
  end
end
