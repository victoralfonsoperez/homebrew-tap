cask "scribe" do
  version "0.1.0"

  url "https://github.com/victoralfonsoperez/scribe/releases/download/v#{version}/Scribe-#{version}-arm64.dmg"
  sha256 "6543629895e32c219b421bf2ee555eb0f5e32e02922bcdb649dfed6d090bcddb"

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
