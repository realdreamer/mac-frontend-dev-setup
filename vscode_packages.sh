#!/usr/bin/env bash

source helper/utils.sh

e_header "Installing VS code packages......"

# Install Icons packages
for app in "robertohuertasm.vscode-icons" \
	"ms-vscode.sublime-keybindings" \
	"2gua.rainbow-brackets" \
	"WallabyJs.quokka-vscode" \
	"ritwickdey.liveserver" \
	"xabikos.javascriptsnippets" \
	"HookyQR.beautify" \
	"formulahendry.auto-rename-tag" \
	"formulahendry.auto-close-tag" \
	"vincaslt.highlight-matching-tag" \
	"christian-kohler.path-intellisense" \
	"oderwat.indent-rainbow" \
	"techer.open-in-browser" \
	"dbankier.vscode-instant-markdown" \
	"msjsdiag.debugger-for-chrome" \
	"pranaygp.vscode-css-peek" \
	"Zignd.html-css-class-completion" \
	"Shan.code-settings-sync" \
	"esbenp.prettier-vscode" \
	"dbaeumer.vscode-eslint" \
	"eg2.tslint" \
	"glen-84.sass-lint" \
	"mikestead.dotenv" \
	"ms-vscode.go" \
	"kumar-harsh.graphql-for-vscode" \
	"vsmobile.vscode-react-native" \
	"mubaidr.vuejs-extension-pack" \
	"octref.vetur" \
	"shd101wyy.markdown-preview-enhanced" \
	"jpoissonnier.vscode-styled-components" \
	"dzannotti.vscode-babel-coloring" \
	"robinbentley.sass-indented" \
	"freebroccolo.reasonml" \
	"naumovs.theme-oceanicnext" \
	"ms-vscode.Theme-TomorrowKit" \
	"sdras.night-owl" \
	"ms-vscode.theme-materialkit" \
	"gerane.theme-flatlandmonokai" \
	"wesbos.theme-cobalt2" \
	"EditorConfig.editorconfig" \
	"eg2.vscode-npm-script" \
	"christian-kohler.npm-intellisense"; do
	code-insiders --install-extension "${app}"
done

e_success "🍻 VS code packages installation is done...!"
