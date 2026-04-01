class ApheliosSlint < Formula
  desc "Aphelios AI Assistant - macOS App"
  homepage "https://github.com/tardigrade-dot/aphelios_cli"
  version "0.0.3"

  # 针对不同架构定义下载地址
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tardigrade-dot/aphelios_cli/releases/download/v#{version}/aphelios-macos-arm64.zip"
    sha256 "sha256:5fca5ded13b7ca1cdf907aa197b6f5ab7f180a9ab2964566a664462b7df3ff1a"
  end

  depends_on macos: :catalina

  def install
    # 安装 .app bundle 到 Applications 目录
    app.install "Aphelios.app"
  end

  test do
    # Homebrew 测试通常用于 CLI 工具，.app 不需要 test
    # 如果需要测试，可以检查 .app 是否存在
    assert_predicate app/"Aphelios.app", :exist?
  end
end