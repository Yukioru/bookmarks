#!/bin/sh

echo "Скачивание VSCode..."
curl -L -s -o /tmp/vscode.zip https://go.microsoft.com/fwlink/\?LinkID\=620882

echo "Установка VSCode..."
unzip -q /tmp/vscode.zip -d /Applications
sleep 1

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Yukioru/bookmarks/master/vscode-starter-kit/install-extensions.sh)"

echo "Удаление ненужных файлов..."
rm -rf /tmp/vscode.zip

echo "Завершение..."
echo ""
echo ""
echo "Для установки code в терминале - откройте VSCode и выполните:"
echo ""
echo "[CMD]+[SHIFT]+[P]"
echo ">install 'code'"
echo ""
echo ""
echo ""
