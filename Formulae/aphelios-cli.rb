class aphelios_cli < Formula
  desc "Rust 编写的工具描述"
  homepage "https://github.com/tardigrade-dot/aphelios_cli"
  version "0.1.0"

  # 针对不同架构定义下载地址
  if OS.mac?

    url "https://github.com/tardigrade-dot/aphelios_cli/releases/download/v0.0.1/aphelios_cli-x86_64-apple-darwin.tar.gz"
    sha256 "241d5a7e11bb66ed988862bc51fd6d72da72deab2489269a6583449ab50d374a"
  end

  def install
    # 这就是 Formula 里的安装命令
    # 将解压出来的二进制文件安装到 brew 的 bin 目录
    bin.install "aphelios_cli"
  end

  test do
    system "#{bin}/aphelios_cli", "--version"
  end
end