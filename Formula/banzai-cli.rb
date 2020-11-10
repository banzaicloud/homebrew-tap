# This file was generated by GoReleaser. DO NOT EDIT.
class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  version "0.16.2"

  if OS.mac?
    url "https://github.com/banzaicloud/banzai-cli/releases/download/0.16.2/banzai_0.16.2_darwin_amd64.tar.gz"
    sha256 "f27bd90352d7de45b9abc248f80c891d923e1abbf6cec14471a68101a8d36e83"
  elsif OS.linux?
    url "https://github.com/banzaicloud/banzai-cli/releases/download/0.16.2/banzai_0.16.2_linux_amd64.tar.gz"
    sha256 "d64a7ce4c3ea88aed32afe3e085308bb3221df994d8324b7f661299d73387709"
  end
  
  depends_on "kubectl"

  def install
    bin.install "banzai"
    
    # Install bash completion
    output = Utils.popen_read("#{bin}/banzai completion bash")
    (bash_completion/"banzai").write output
    
    # Install zsh completion
    output = Utils.popen_read("#{bin}/banzai completion zsh")
    (zsh_completion/"_banzai").write output
  end

  test do
    system "#{bin}/banzai --version"
  end
end
