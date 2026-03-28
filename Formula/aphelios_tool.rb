class ApheliosCli < Formula
  desc "Rust 编写的工具描述"
  homepage "https://github.com/tardigrade-dot/aphelios_cli"
  version "0.1.0"

  # 针对不同架构定义下载地址
  if OS.mac?

    url "https://github.com/tardigrade-dot/aphelios_cli/releases/download/v0.0.1/aphelios_tool-x86_64-apple-darwin.tar.gz"
    sha256 "a785d006915617d51ad5e0b819b1413ce211ef43b79028a5a7a506923b3de082"
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