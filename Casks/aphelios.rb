cask "aphelios" do
  version "0.0.3"
  sha256 "5fca5ded13b7ca1cdf907aa197b6f5ab7f180a9ab2964566a664462b7df3ff1a"

  url "https://github.com/tardigrade-dot/aphelios_cli/releases/download/v#{version}/aphelios-macos-arm64.zip"
  name "Aphelios"
  desc "Aphelios AI Assistant - macOS App"
  homepage "https://github.com/tardigrade-dot/aphelios_cli"

  # Cask 专门处理 .app 的语法
  app "Aphelios.app"

  # 依赖声明
  depends_on macos: ">= :catalina"

  # 如果有配置文件或缓存，可以增加 zap 块（可选，方便用户彻底卸载）
  zap trash: [
    "~/Library/Application Support/aphelios",
    "~/Library/Preferences/com.aphelios.plist",
  ]

  caveats <<~EOS
    如果打开时显示“已损坏”，请在终端执行：
    sudo xattr -rd com.apple.quarantine #{appdir}/Aphelios.app
  EOS
end