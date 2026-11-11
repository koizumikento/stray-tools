cask "audio-session-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "b1b2bd0ca9ecdc9c770054df38975280ce3b6a1f212fb03466eb28bfc027603c",
         intel: "bcfe733fcdcc22147ed8d244b4f6f9c2548330d1868e3ced7ad027ca534422b3"

  url "https://github.com/koizumikento/stray-tools/releases/download/audio-session-desk-v#{version}/audio-session-desk-macos-#{arch}.zip"
  name "Audio Session Desk"
  desc "Desktop audio recording and transcription workspace"
  homepage "https://github.com/koizumikento/stray-tools/releases/tag/audio-session-desk-v0.3.0"

  depends_on formula: "ffmpeg"

  app "Audio Session Desk.app"
end
