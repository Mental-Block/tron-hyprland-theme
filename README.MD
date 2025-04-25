# Hyperland TRON themed Desktop Enviroment

This is a custom riced arch linux enviroment of one of my favourite childhood movies. 

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

```
yay -S 7zip acpi base base-devel bluetui brightnessctl cava clipse fd fzf fastfetch glfw gvfs-mtp htop hypridle hyprland hyprlock hyprpaper hyprpicker-git hyprpolkitagent hyprshot imagemagick kitty less librewolf-bin mpv-mpris nvtop otf-font-awesome pamixer pavucontrol pipewire-alsa pipewire-pulse power-profiles-daemon pulseaudio-alsa resvg ripgrep rofi-wayland scdoc sddm sof-firmware starship swaync-git, ttf-font-awesome, ttf-space-mono-nerd umockdev unzip waybar xdg-desktop-portal-gtk xdg-desktop-portal-hyprland xorg-xhost xorg-xinit xwaylandvideobridge yad yazi
```

### Non configured applications/tools - optional

This is just a collection of extra tools and applications installed on my machine but are not needed for the GUI to work. 

```
yay -S gimp kdeconnect linux linux-firmware timeshift vi vim yt-dlp zoxid amd-code bc inxi
```

### Download dotfiles 

```
git clone https://github.com/Mental-Block/tron-hyprland-theme.git
cd tron-hyprland-theme
```

Copy the packages of ".config" to the "~/.config" directory or using the recommend method of creating a symlink with GNU `stow`.

```
yay -S stow 
stow .
```

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








