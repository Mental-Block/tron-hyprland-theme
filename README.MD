#Hyperland TRON themed Desktop Enviroment

This is a custom riced arch linux desktop enviroment of one of my favourite childhood movies.  

## Preview

## Set up Instructions

### Install yay AUR helper 

Follow the instruction at the git repo or below:
https://github.com/Jguer/yay?tab=readme-ov-file

```
sudo packman -S --needed --base-devel 
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### Install Dependancies

`yay -S `

### Download dotfiles 

```
git clone https://github.com/Mental-Block/tron-hyprland-theme.git
cd tron-hyprland-theme
```

Copy the folders to the "~/.config/" directory or create a symlink with GNU `stow`. GNU stow is recommended.

### Move sddm-tron-theme 

Place the "sddm-tron-theme" folder in the "/usr/share/sddm/themes/" directory and modify/create a new file in "/etc/sddm.conf". modify/add
"[Theme]Current=sddm-tron-theme" to file. The directory name and [theme]Current= must match. 

Manually:
```
cp -r ~/.config/sddm-tron-theme /usr/share/sddm/themes/
```

Stow:
```
  stow -d="sddm-tron-theme" -t="/usr/share/sddm/themes/"
```

If the file exists you will have to manually edit "sddm.conf"
Edit Config:
```
...

[Theme]
Current="sddm-tron-theme"

...
```

Having issues:
https://wiki.archlinux.org/title/SDDM

### Move Tron Font to Fonts Directory

Manually:
```
mv  ~/.config/Fonts/Tron-JOAa.tff /usr/share/fonts/
```

Stow: 
```
stow -d="Fonts" -t="/user/share/fonts"
```

Having Issues: 
https://wiki.archlinux.org/title/Fonts

## Todo 

- kitty term theming
- starship theming
- yazi theming
- hypr wallpaper, auto wallPaperChange not working






