```
                ______ ________________                                                  
 ____  ____________  /___( __ )_____/_/______ _________ ___________________ ___   ______ 
 __  |/_/__  __ \_  __ \  __  |___/_/ __  __ `__ \  __ `/_  __ \  ___/  __ `/_ | / /  _ \
 __>  < __  /_/ /  / / / /_/ /__/_/   _  / / / / / /_/ /_  / / / /__ / /_/ /__ |/ //  __/
 /_/|_| _  .___//_/ /_/\____/ /_/     /_/ /_/ /_/\__,_/ /_/ /_/\___/ \__,_/ _____/ \___/ 
        /_/                                                                               
```

```bash
chezmoi init https://github.com/xph8/mancave.git
```

TODO:
- fonts
- micro theme, lsd, bat, rigrep config
- cowsays
- ssh config for multiple git accounts guide
- mac settings
- Note that '/var/lib/flatpak/exports/share' is not in the search path
set by the XDG_DATA_HOME and XDG_DATA_DIRS
environment variables, so applications may not
be able to find it until you set them.

* * *

Distro: Fedora

Desktop Enviournment: KDE Plasma

Application Style: Klassy

Bar: Polybar

Launcher: Rofi

* * *

Terminal: Alacritty

Shell: zsh

* * *

Typography:
- Helvetica (normal)
- JetBrains Mono (monospace)
- Scientifica (monospace bitmap)
- Kochi Gothic (Japanese typeface)

* * *

Colour Scheme: Dantalian Nordic

```yaml
terminal:
  background: '#131517'  # black
  foreground: '#dadada'  # white

primary:
  black:       '#131517'
  white:       '#c0c0c0'
  cyan-light:  '#8f9fb4'
  cyan-dark:   '#81a1c1'
  cyan-darker: '#4d6477'
  green-light: '#a7b594'
  red:         '#bf616a'

secondary:
  background:        '#1e1e1e' '#1c1c1c'
  foreground:        '#52565f' '#585858'
  background-bright: '#131517'
  foreground-bright: '#c0c0c0' '#bcbcbc'
```

* * *

Chezmoi setup

* * *
