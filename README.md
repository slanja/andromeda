# andromeda 🌌✨
![Rice showcase](./demo/demo01.png)

## Keybinds
<kbd>SUPER</kbd>  <kbd>C</kbd> - close window<br>
<kbd>SUPER</kbd>  <kbd>Q</kbd> - log out<br>
<kbd>SUPER</kbd>  <kbd>E</kbd> - open file manager<br>
<kbd>SUPER</kbd>  <kbd>V</kbd> - toggle floating<br>
<kbd>SUPER</kbd>  <kbd>R</kbd> - open app launcher<br>
<kbd>SUPER</kbd>  <kbd>P</kbd> - toggle pseudo<br>
<kbd>SUPER</kbd>  <kbd>J</kbd> - toggle split<br>
<kbd>SUPER</kbd>  <kbd>F</kbd> - toggle fullscreen<br>
<kbd>SUPER</kbd>  <kbd>SHIFT</kbd>  <kbd>S</kbd> - screenshot<br>
<kbd>SUPER</kbd>  <kbd>[arrow]</kbd> - switching active windows<br>

### Managing workspaces
<kbd>SUPER</kbd>  <kbd>[number]</kbd> - switch to workspace [number]<br>
<kbd>SUPER</kbd>  <kbd>SHIFT</kbd>  <kbd>[number]</kbd> - move window to workspace [number]<br>


## Default applications
Web browser: firefox<br>
Terminal: kitty<br>
File manager: nautilus<br>
App launcher: rofi<br>
Bar: waybar<br>
Screenshots: hyprshot<br>
Wallpapers: hyprsome<br>


## Installation
1. Install the necessary packages

Installation of pacman packages
```
sudo pacman -S firefox stow spotify-launcher kitty nautilus discord asciiquarium rofi waybar git
```

Installation of paru
```
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru
```

Installation of paru packages
```
paru -S cava betterdiscord-installer 
```

2. Clone the repository
```
git clone https://github.com/slanja/andromeda.git ~/.dotfiles
cd ~/.dotfiles
```

3. Initialize git
```
git init
```

4. Create symlinks using stow to manage .dotfiles
```
stow .
```


### Cursor
https://github.com/phisch/phinger-cursors