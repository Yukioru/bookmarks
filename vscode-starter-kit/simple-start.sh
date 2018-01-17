#!/bin/sh

echo "Скачивание VSCode..."
curl -L -s -o /tmp/vscode.zip https://go.microsoft.com/fwlink/\?LinkID\=620882

echo "Установка VSCode..."
unzip -q /tmp/vscode.zip -d /Applications
sleep 1
export PATH="$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin"

sh ./install-extensions.sh

echo "Удаление ненужных файлов..."
rm -rf /tmp/vscode.zip

