```bash
git clone https://github.com/nu11zy/kali-dwm
cd kali-dwm
chmod +x install.sh
./install.sh
```

После установки:

1. Удаляем все горячие клавиши из keyboard -> application shortcuts
2. Ставим Never на xfwm, xfce-panel и xfdesktop в session manager -> current session. **SAVE SESSION**
3. Добавляем `dwm`, `slstatus`, `xwallpaper --center ~/.local/.desktop/wallpaper.png` в session manager -> application autostart.\
   *По желанию убираем `user folders update`*
5. Перезагружаем
