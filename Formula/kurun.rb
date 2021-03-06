# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kurun < Formula
  desc "Run main.go in Kubernetes with one command"
  homepage "https://banzaicloud.com/blog/kurun"
  version "0.5.4"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/banzaicloud/kurun/releases/download/0.5.4/kurun-darwin-amd64.tar.gz"
    sha256 "639648984aa7894ca5620997e8dbac715008e71442997cfb56e7103b6cb6eecd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/banzaicloud/kurun/releases/download/0.5.4/kurun-linux-amd64.tar.gz"
    sha256 "7df05f731ddf15c9eb0a87f13e12d9799a6b8a371913cf0e629e117b05cfcf4d"
  end

  depends_on "inlets"

  def install
    bin.install "kurun"
  end

  test do
    system "#{bin}/kurun --version"
  end
end
