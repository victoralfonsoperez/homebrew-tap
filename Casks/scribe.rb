cask "scribe" do
  version "0.1.1"

  url "https://github.com/victoralfonsoperez/scribe/releases/download/v#{version}/Scribe-#{version}-arm64.dmg"
  sha256 "711dd392e3c5be699ba07bf9713241d58ab2f463aed04f15ec551cf2bbe353b1"

  name "Scribe"
  desc "Local-first meeting transcription and summarization for macOS"
  homepage "https://github.com/victoralfonsoperez/scribe"

  depends_on macos: ">= :ventura"

  app "Scribe.app"

  zap trash: [
    "~/Library/Application Support/Scribe",
    "~/Library/Logs/Scribe",
    "~/Library/Preferences/com.scribe.app.plist",
  ]
end
