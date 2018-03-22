# Visual Studio Code Starter Kit

Давно хотели попробовать VSCode, но не решались из за ~~того, что не было поддержки коллег~~ банальной лени?

### Установка VSCode

**Просто сделайте это!** Прямо сейчас, первым шагом, скачайте свежую версию программы: *[Ссылка на скачивание](https://code.visualstudio.com/download)*

### Автоматическая установка (только для macOS)

Похоже вы настолько ленивы, что даже мы не смогли вас мотивировать. Так уж и быть, для вас мы сделали специальную автоматическую установку.

**Установить VSCode и расширения автоматически:**

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Yukioru/bookmarks/master/vscode-starter-kit/simple-start.sh)"
```

**Установить только расширения автоматически:**

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Yukioru/bookmarks/master/vscode-starter-kit/install-extensions.sh)"
```

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

**vscode-styled-components** - подсветка CSS параметров для styled компонентов.

`code --install-extension jpoissonnier.vscode-styled-components`

[![vscode-styled-components Marketplace](https://img.shields.io/badge/Marketplace-vscode%20styled%20components-blue.svg?style=flat-square)](https://marketplace.visualstudio.com/items?itemName=jpoissonnier.vscode-styled-components)

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

### Настройки

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

### Сочетания клавиш

| Комбинация                                         | Значение                                                                   |
| -------------------------------------------------- | -------------------------------------------------------------------------- |
| <kbd>ctrl</kbd>+<kbd>r</kbd>                       | Открыть последние рабочие области                                          |
| <kbd>cmd</kbd>+<kbd>p</kbd>                        | Открыть файл (с поиском) внутри рабочей области                            |
| <kbd>cmd</kbd>+<kbd>shift</kbd>+<kbd>p</kbd>       | Выполнить действие                                                         |
| <kbd>cmd</kbd>+<kbd>f</kbd>                        | Поиск по открытому файлу                                                   |
| <kbd>cmd</kbd>+<kbd>option</kbd>+<kbd>f</kbd>      | Поиск и замена по открытому файлу                                          |
| <kbd>cmd</kbd>+<kbd>shift</kbd>+<kbd>f</kbd>       | Поиск по рабочей области                                                   |
| <kbd>ctrl</kbd>+<kbd>q</kbd>                       | Переключение между вкладками ActivityBar (удерживая нажимать <kbd>q</kbd>) |
| <kbd>cmd</kbd>+<kbd>option</kbd>+<kbd>up</kbd>     | Дублирование курсора вверх                                                 |
| <kbd>cmd</kbd>+<kbd>option</kbd>+<kbd>down</kbd>   | Дублирование курсора вниз                                                  |
| <kbd>option</kbd>+<kbd>shift</kbd>+<kbd>up</kbd>   | Дублирование строки/выделенных строк вверх                                 |
| <kbd>option</kbd>+<kbd>shift</kbd>+<kbd>down</kbd> | Дублирование строки/выделенных строк вниз                                  |
| <kbd>option</kbd>+<kbd>up</kbd>                    | Перемещение строки/выделенных строк вверх                                  |
| <kbd>option</kbd>+<kbd>down</kbd>                  | Перемещение строки/выделенных строк вниз                                   |
| <kbd>option</kbd>+<kbd>left</kbd>                  | Перемещение курсора по словам влево                                        |
| <kbd>option</kbd>+<kbd>right</kbd>                 | Перемещение курсора по словам вправо                                       |
| <kbd>cmd</kbd>+<kbd>left</kbd>                     | Перемещение курсора в начало строки                                        |
| <kbd>cmd</kbd>+<kbd>right</kbd>                    | Перемещение курсора в конец строки                                         |
| <kbd>cmd</kbd>+<kbd>up</kbd>                       | Перемещение курсора в начало файла                                         |
| <kbd>cmd</kbd>+<kbd>down</kbd>                     | Перемещение курсора в конец файла                                          |
 

*Данное пособие будет дополняться постепенно...*
