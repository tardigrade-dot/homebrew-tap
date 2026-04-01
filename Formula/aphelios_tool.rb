class ApheliosTool < Formula
  desc "Rust 编写的工具描述"
  homepage "https://github.com/tardigrade-dot/aphelios_cli"
  version "0.0.3"

  # 针对不同架构定义下载地址
  if OS.mac?

    url "https://github.com/tardigrade-dot/aphelios_cli/releases/download/v0.0.3/aphelios-tool-macos-arm64.tar.gz"
    sha256 "5bad98d0ee1e82b52a173def6cfd18294d5a34b26adeeec9b8996671a8f0fb31"
  end

  def install
    # 这就是 Formula 里的安装命令
    # 将解压出来的二进制文件安装到 brew 的 bin 目录
    bin.install "aphelios_tool"
  end

  test do
    system "#{bin}/aphelios_tool", "--version"
  end
end