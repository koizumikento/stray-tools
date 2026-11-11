cask "audio-session-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "9fa6ae543eca8a2f3d684910e207c5bf14747c305c7a18af66f5bf617471c6c1",
         intel: "6e607729033ac60393685363249dab3f70440dd4dc05b6538cf99dfc77f12f2c"

  url "https://github.com/koizumikento/stray-tools/releases/download/audio-session-desk-v#{version}/audio-session-desk-macos-#{arch}.zip"
  name "Audio Session Desk"
  desc "Desktop audio recording and transcription workspace"
  homepage "https://github.com/koizumikento/stray-tools/releases/tag/audio-session-desk-v0.2.0"

  depends_on formula: "ffmpeg"

  app "Audio Session Desk.app"
end
