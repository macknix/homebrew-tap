# Rendered by Scripts/render-cask.sh — edit the template in the note-bubble repo,
# not the copy in the tap, or the next release will overwrite you.
cask "note-bubble" do
  version "1.0.0"
  sha256 "86e8bb40a811d54259d5f0a7727cd94b38edd781e8818b9f735e01b35506886a"

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
