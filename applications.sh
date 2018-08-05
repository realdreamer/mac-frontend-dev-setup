# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

for app in "google-chrome" \
	"google-chrome-canary" \
	"firefox" \
	"firefox-nightly" \
	"firefox-esr" \
	"safari-technology-preview" \
	"visual-studio-code-insiders" \
	"iterm2" \
	"sourcetree" \
	"electron" \
	"github" \
	"slack" \
	"skype" \
	"skype-for-business" \
	"evernote" \
	"spotify" \
	"gitter" \
	"ngrok" \
	"vlc"; do
	brew cask install "${app}"
done
