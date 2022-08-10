# MSO UI 


## Настройка темы оформления ОС
```bash
sudo apt install meteria-gtk-theme papirus-icon-theme
```

В Tweak tool:
```text
Applications = Materia
Icons = Papirus
Shell = Materia
```

## Автозапуск UI при старте системы:

```bash
nano .config/autostart/MSO.desktop
```

```text
[Desktop Entry]
Encoding=UTF-8
Name=MSO-UI
Comment=MSO UI application
Icon=gnome-info
Exec=python3 /home/user/app/MSO/interface/main.py
Terminal=false
Type=Application
Categories=

X-GNOME-Autostart-enabled=true
X-GNOME-Autostart-Delay=0
```