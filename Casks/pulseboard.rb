cask "pulseboard" do
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/choipeanut/SoundP/releases/download/v#{version}/Pulseboard-#{version}-osx-arm64.dmg"
    sha256 "7a0892ffd633f188bebf67a8743329d8ad56f44e74f11258ba9d3f41ed3950cd"
  else
    url "https://github.com/choipeanut/SoundP/releases/download/v#{version}/Pulseboard-#{version}-osx-x64.dmg"
    sha256 "d5d34f7089fbbe4859dacf4b36e4db9446c69cd47df539854d8c0a358a09defa"
  end

  name "Pulseboard"
  desc "Sound board with MIDI support and per-key fade in/out"
  homepage "https://github.com/choipeanut/SoundP"

  app "Pulseboard.app"

  zap trash: [
    "~/Library/Preferences/com.pulseboard.app.plist",
    "~/Library/Application Support/Pulseboard",
  ]
end
