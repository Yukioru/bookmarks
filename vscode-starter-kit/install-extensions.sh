#!/bin/sh

extensions=(
  "eamodio.gitlens"
  "dbaeumer.vscode-eslint"
  "robertohuertasm.vscode-icons"
  "Zignd.html-css-class-completion"
  "christian-kohler.npm-intellisense"
  "christian-kohler.path-intellisense"
  "tinkertrain.theme-panda"
)

echo "Установка расширений и тем..."

for ext in "${extensions[@]}"
do
  code --install-extension $ext
done
