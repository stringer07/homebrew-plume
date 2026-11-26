cask "plume-editor" do
  version "1.0.3"
  sha256 "587edfb445dba45bb0fc424065b899e5d701686cf73aa9d9bb89d192a42ffc8d"

  url "https://github.com/stringer07/homebrew-plume/releases/download/v#{version}/Plume-#{version}.zip"
  name "Plume"
  desc "Native text editor with SSH workspaces"
  homepage "https://github.com/stringer07/homebrew-plume"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Plume.app"

  uninstall quit: "com.aurelian.Plume"

  zap script: "stop-jupyter-host.sh",
      trash:  [
        "~/.plume/bin",
        "~/.plume/run",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aurelian.plume.sfl*",
        "~/Library/Application Support/com.aurelian.Plume",
        "~/Library/Caches/com.aurelian.Plume",
        "~/Library/HTTPStorages/com.aurelian.Plume",
        "~/Library/HTTPStorages/com.aurelian.Plume.binarycookies",
        "~/Library/Preferences/ByHost/com.aurelian.Plume.*.plist",
        "~/Library/Preferences/com.aurelian.Plume.plist",
        "~/Library/Saved Application State/com.aurelian.Plume.savedState",
        "~/Library/WebKit/com.aurelian.Plume",
      ],
      rmdir:  "~/.plume"
end
