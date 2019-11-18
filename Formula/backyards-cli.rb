# This file was generated by GoReleaser. DO NOT EDIT.
class BackyardsCli < Formula
  desc "Command-line interface for Backyards"
  homepage "https://banzaicloud.com/"
  version "1.0.4"

  if OS.mac?
    url "https://github.com/banzaicloud/backyards-cli/releases/download/1.0.4/backyards_1.0.4_darwin_amd64.tar.gz"
    sha256 "388bb6d57529ba5b26cb2457d1012cd5c81967efcd1c346c07d00eef72b44089"
  elsif OS.linux?
    url "https://github.com/banzaicloud/backyards-cli/releases/download/1.0.4/backyards_1.0.4_linux_amd64.tar.gz"
    sha256 "43d1ae3ec558bb813e596bb0bafec6de96ba9e1b0a2ee4bc2209109b410974da"
  end

  def install
    bin.install "backyards"
  end

  test do
    system "#{bin}/backyards --version"
  end
end
