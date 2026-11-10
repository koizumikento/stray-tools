cask "audio-session-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "42d6fe60835db7645bb00954e683e8cd5f12ff343fb4d42055c65125f4602231",
         intel: "43e5bcbae0a40e4854072215fa0c968c4143b6a658890fa14b2cd0de536ee47a"

  url "https://github.com/koizumikento/stray-tools/releases/download/audio-session-desk-v#{version}/audio-session-desk-macos-#{arch}.zip"
  name "Audio Session Desk"
  desc "Desktop audio recording and transcription workspace"
  homepage "https://github.com/koizumikento/stray-tools/releases/tag/audio-session-desk-v0.1.0"

  depends_on formula: "ffmpeg"

  app "Audio Session Desk.app"
end
