# This file was generated by GoReleaser. DO NOT EDIT.
class BackyardsCli < Formula
  desc "Command-line interface for Backyards"
  homepage "https://banzaicloud.com/"
  version "1.0.3"

  if OS.mac?
    url "https://github.com/banzaicloud/backyards-cli/releases/download/1.0.3/backyards_1.0.3_darwin_amd64.tar.gz"
    sha256 "1b657ca3a09a815a5a9056a05a216e126594f8987d7d27095c3e13dacc976dda"
  elsif OS.linux?
    url "https://github.com/banzaicloud/backyards-cli/releases/download/1.0.3/backyards_1.0.3_linux_amd64.tar.gz"
    sha256 "b8c62704365fc070d8e2057fc3936126c18d54b75bbcb333a7bf711c54f90a14"
  end

  def install
    bin.install "backyards"
  end

  test do
    system "#{bin}/backyards --version"
  end
end
