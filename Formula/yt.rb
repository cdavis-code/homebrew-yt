class Yt < Formula
  desc "A CLI tool for the YouTube Data, Live Streaming, and Analytics APIs"
  homepage "https://github.com/cdavis-code/yt_workspace"
  version "2.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdavis-code/yt_workspace/releases/download/yt_cli-v2.2.6/yt-darwin-arm64"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    end
    on_intel do
      url "https://github.com/cdavis-code/yt_workspace/releases/download/yt_cli-v2.2.6/yt-darwin-x64"
      sha256 "PLACEHOLDER_X64_SHA256"
    end
  end

  on_linux do
    url "https://github.com/cdavis-code/yt_workspace/releases/download/yt_cli-v2.2.6/yt-linux-x64"
    sha256 "PLACEHOLDER_LINUX_SHA256"
  end

  def install
    bin.install "yt"
  end

  test do
    system "#{bin}/yt", "--help"
  end
end
