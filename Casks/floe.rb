cask "floe" do
  version "0.3.0"
  sha256 "3d452b3a99786cfcb5d81fe66ef0a5a26fb38c9d2bf8afd8700e9e9a27493cd0"

  url "https://github.com/thaw-app/Floe/releases/download/#{version}/Floe.dmg",
      verified: "github.com/thaw-app/Floe/"
  name "Floe"
  desc "Open source launcher for macOS"
  homepage "https://github.com/thaw-app/Floe/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Floe ships Sparkle (appcast: thaw-app.github.io/Floe/appcast.xml) and publishes
  # delta updates between releases. auto_updates makes `brew upgrade --cask` skip it,
  # so brew performs only the initial install and Sparkle owns every update after.
  # That is why the pinned version above needs no routine bumping: it is the
  # bootstrap version for a fresh machine, nothing more.
  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Floe.app"

  uninstall quit: "org.thaw.floe"

  zap trash: [
    "~/Library/Application Support/org.thaw.floe",
    "~/Library/Caches/org.thaw.floe",
    "~/Library/HTTPStorages/org.thaw.floe",
    "~/Library/Preferences/org.thaw.floe.plist",
    "~/Library/Saved Application State/org.thaw.floe.savedState",
  ]
end
