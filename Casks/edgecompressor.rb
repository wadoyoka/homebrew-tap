cask "edgecompressor" do
  version "0.1.0"
  sha256 "1af14a2939507ac73c4863f1c33e85e01810bac98c4403f94362b5d1db0295c5"

  url "https://github.com/wadoyoka/image_compression/releases/download/v#{version}/EdgeCompressor-#{version}-arm64-mac.zip"
  name "EdgeCompressor"
  desc "Image compression and conversion desktop app"
  homepage "https://github.com/wadoyoka/image_compression"

  depends_on arch: :arm64

  app "EdgeCompressor.app"

  zap trash: [
    "~/Library/Application Support/EdgeCompressor",
    "~/Library/Preferences/com.imagecompressor.app.plist",
    "~/Library/Caches/com.imagecompressor.app",
  ]
end
