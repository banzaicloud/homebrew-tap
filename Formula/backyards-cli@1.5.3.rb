# This file was generated by GoReleaser. DO NOT EDIT.
class BackyardsCliAT153 < Formula
  desc "Command-line interface for Backyards"
  homepage "https://banzaicloud.com/"
  version "1.5.3"

  if OS.mac?
    url "https://banzaicloud.com/downloads/backyards-cli/1.5.3/dist/backyards_1.5.3_darwin_amd64.tar.gz"
    sha256 "1ffd1fe301a0ebe6ba43319fc6aedd9cc2065a4cb20e7087cfb27c3b92bbb6a0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://banzaicloud.com/downloads/backyards-cli/1.5.3/dist/backyards_1.5.3_linux_amd64.tar.gz"
      sha256 "dc6dbd17a5c6778799fd6c9c77f4092ca9152182093eb9b2b4a712798f649346"
    end
  end

  def install
    bin.install "backyards"
  end

  test do
    system "#{bin}/backyards --version"
  end
end
