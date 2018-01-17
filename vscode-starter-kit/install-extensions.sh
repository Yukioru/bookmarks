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
# sleep 1
# exec open /Applications/Visual\ Studio\ Code.app & (sleep 1 && kill $!)
# sleep 2

for ext in "${extensions[@]}"
do
  code --install-extension $ext
done
