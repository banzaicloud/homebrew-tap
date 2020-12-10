# This file was generated by GoReleaser. DO NOT EDIT.
class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  version "0.16.5"

  if OS.mac?
    url "https://github.com/banzaicloud/banzai-cli/releases/download/0.16.5/banzai_0.16.5_darwin_amd64.tar.gz"
    sha256 "d43fdbc153065c9ac495ba6e97fedc6f6c7276a6601bdd26b9e084960d3a9727"
  elsif OS.linux?
    url "https://github.com/banzaicloud/banzai-cli/releases/download/0.16.5/banzai_0.16.5_linux_amd64.tar.gz"
    sha256 "12b34bc0c73da7ad4a67125c6d8b248fc137a34d47b664f559666d5d693ab289"
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
