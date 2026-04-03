cask "scribe" do
  version "0.1.3"

  url "https://github.com/victoralfonsoperez/scribe/releases/download/v#{version}/Scribe-#{version}-arm64.dmg"
  sha256 "7cfa035d87e275f12240cdef476fab8fd994d188f4185afb0075fbfe64abdb5c"

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
