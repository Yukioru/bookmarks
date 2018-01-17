# Visual Studio Code Starter Kit

Давно хотели попробовать VSCode, но не решались из за ~~того не было поддержки коллег~~ банальной лени?

### Установка дистрибутива

**Просто сделайте это!** Прямо сейчас, первым шагом, скачайте свежий дистрибутив: *[Ссылка на скачивание](https://code.visualstudio.com/download)*

### Установка расширений

**Git Lens** - многофунциональное расширение для работы с git репозиторием непосредственно в рабочем окружении.

Позволяет видеть коммиты внутри кода по чанкам, а также построчно. Просматривать, сравнивать разные коммиты из разных веток (и даже origin'ов). 

`code --install-extenstion eamodio.gitlens`

[![Git Lens Marketplace](https://img.shields.io/badge/Marketplace-Git%20Lens-blue.svg?style=flat-square)](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)

-------

**ESLint** - EcmaScript Linter. Позволяет содержать ваш код в рамках установленных правил. Хорошо работает и конфигурируется с Babel 7.

`code --install-extension dbaeumer.vscode-eslint`

[![ESLint Marketplace](https://img.shields.io/badge/Marketplace-ESLint-blue.svg?style=flat-square)](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)

*Настройка сочетания клавиш для автоисправления ошибок в файле:*

В VSCode жмём сочитание клавиш <kbd>cmd</kbd>+<kbd>shift</kbd>+<kbd>p</kbd>, далее вводим `shortcuts file` и переходим в файл настроек сочетаний клавиш. В правую часть вставляем пример:
```
{
  "key": "ЗДЕСЬ ВАШЕ СОЧЕТАНИЕ КЛАВИШ",
  "command": "eslint.executeAutofix",
  "when": "editorFocus"
}
```

-------

**vscode-icons** - тема иконок в стиле Visual Studio Code с самой большой поддержкой файловых разрешений.

`code --install-extension robertohuertasm.vscode-icons`

[![vscode-icons Marketplace](https://img.shields.io/badge/Marketplace-vscode--icons-blue.svg?style=flat-square)](https://marketplace.visualstudio.com/items?itemName=robertohuertasm.vscode-icons)

После установки `Активировать` иконки или включить их вручную в `Параметры -> Тема значка файла -> vscode-icons`.

-------

**IntelliSense for CSS class names** - поддержка подсказок/автодополнений (IntelliSense) CSS параметров.

`code --install-extension Zignd.html-css-class-completion`

[![IntelliSense for CSS class names Marketplace](https://img.shields.io/badge/Marketplace-IntelliSense%20for%20CSS%20class%20names-blue.svg?style=flat-square)](https://marketplace.visualstudio.com/items?itemName=Zignd.html-css-class-completion)

-------

**npm Intellisense** - поддержка подсказок/автодополнений (IntelliSense) для импортов npm модулей.

`code --install-extension christian-kohler.npm-intellisense`

[![npm Intellisense Marketplace](https://img.shields.io/badge/Marketplace-npm%20Intellisense-blue.svg?style=flat-square)](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense)

-------

**Path Intellisense** - поддержка подсказок/автодополнений (IntelliSense) для импортов относительных путей.

`code --install-extension christian-kohler.path-intellisense`

[![Path Intellisense Marketplace](https://img.shields.io/badge/Marketplace-Path%20Intellisense-blue.svg?style=flat-square)](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)

-------

### Установка тем

**Panda Theme** - тема оформления + синтаксис. Рекомендую, сам использую.

`code --install-extension tinkertrain.theme-panda`

[![Panda Theme Marketplace](https://img.shields.io/badge/Marketplace-Panda%20Theme-blue.svg?style=flat-square)](https://marketplace.visualstudio.com/items?itemName=tinkertrain.theme-panda)

-------

### Полезности

Заходим в параметры (<kbd>cmd</kbd>+<kbd>,</kbd>) и в правой половине окна добавляем:


Установка кол-ва символов отступа
```
"editor.tabSize": 2
```

Отключение в `vscode-icons` проверки на тип проекта:
```
"vsicons.projectDetection.disableDetect": true
```

Отключение подсказок в рабочей области:
```
"workbench.tips.enabled": false
```

Включение автоматического fetch данных с git:
```
"git.autofetch": true
```

Скрытие левой панели (ActivityBar):
```
"workbench.activityBar.visible": false
```

Скрытие нижнего бара (StatusBar):
```
"workbench.statusBar.visible": false
```

Остальные настройки на наше усмотрение и вкус.

-------

*Данное пособие будет дополняться постепенно...*