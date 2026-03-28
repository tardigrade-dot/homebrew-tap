class ApheliosSlint < Formula
  desc "Rust 编写的工具描述"
  homepage "https://github.com/tardigrade-dot/aphelios_cli"
  version "0.1.0"

  # 针对不同架构定义下载地址
  if OS.mac?

    url "https://github.com/tardigrade-dot/aphelios_cli/releases/download/v0.0.2/aphelios_slint-x86_64-apple-darwin.tar.gz"
    sha256 "bc2787304be6502ba6097ff4d5833f45b66a827119663c8fe8dc4491cdb176d1"
  end

  def install
    # 这就是 Formula 里的安装命令
    # 将解压出来的二进制文件安装到 brew 的 bin 目录
    bin.install "aphelios_slint"
  end

  test do
    system "#{bin}/aphelios_slint", "--version"
  end
end