# Rendered by Scripts/render-cask.sh — edit the template in the note-bubble repo,
# not the copy in the tap, or the next release will overwrite you.
cask "note-bubble" do
  version "1.1.1"
  sha256 "acfae5217edc2f3345dad1c0ea08d997dbe31bc4a21c0cda28724496f12975e7"

  url "https://github.com/macknix/note-bubble/releases/download/v#{version}/NoteBubble-#{version}.zip"
  name "Note Bubble"
  desc "Floating to-do widget whose notes redden with age"
  homepage "https://github.com/macknix/note-bubble"

  depends_on macos: :sonoma

  app "Note Bubble.app"

  zap trash: [
    "~/Library/Application Support/NoteBubble",
    "~/Library/Preferences/com.macknixon.notebubble.plist",
  ]

  caveats <<~EOS
    Note Bubble is not notarised by Apple, so macOS stops it the first time it
    opens. Open it once, then go to System Settings → Privacy & Security and
    click "Open Anyway". macOS remembers from then on.
  EOS
end
