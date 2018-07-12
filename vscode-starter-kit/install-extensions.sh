#!/bin/sh

extensions=(
  "eamodio.gitlens"
  "dbaeumer.vscode-eslint"
  "robertohuertasm.vscode-icons"
  "Zignd.html-css-class-completion"
  "jpoissonnier.vscode-styled-components"
  "christian-kohler.npm-intellisense"
  "christian-kohler.path-intellisense"
  "tinkertrain.theme-panda"
)

echo "Установка расширений и тем..."

for ext in "${extensions[@]}"
do
  /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension $ext
done
