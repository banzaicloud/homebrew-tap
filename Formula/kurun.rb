# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kurun < Formula
  desc "Run main.go in Kubernetes with one command"
  homepage "https://banzaicloud.com/blog/kurun"
  version "0.6.3"

  on_macos do
    url "https://github.com/banzaicloud/kurun/releases/download/0.6.3/kurun-darwin-amd64.tar.gz"
    sha256 "b1506a20ecf93bf952f6ba05e48f0ee971b9769ed13eb5298bbc3ab46f2a565e"

    def install
      bin.install "kurun"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Kurun
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/banzaicloud/kurun/releases/download/0.6.3/kurun-linux-amd64.tar.gz"
      sha256 "32f16ce5262c1e83f894a850b8cbbd67a4c34d61345f3c08c1e6b130dc695a7b"

      def install
        bin.install "kurun"
      end
    end
  end

  test do
    system "#{bin}/kurun --version"
  end
end
