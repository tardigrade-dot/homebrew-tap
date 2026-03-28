class ApheliosSlint < Formula
  desc "Rust 编写的工具描述"
  homepage "https://github.com/tardigrade-dot/aphelios_cli"
  version "0.1.0"

  # 针对不同架构定义下载地址
  if OS.mac?

    url "https://github.com/tardigrade-dot/aphelios_cli/releases/download/v0.0.1/aphelios_slint-x86_64-apple-darwin.tar.gz"
    sha256 "d820d340d491a301d2afbc7623633a60d79e8697c58806fdd627cc7f2c3021a4"
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