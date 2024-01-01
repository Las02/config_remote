if status is-interactive
    # Commands to run in interactive sessions can go here
    alias v="nvim"

    alias code="code --enable-features=UseOzonePlatform --ozone-platform=wayland"
    alias rstudio="rstudio --enable-features=UseOzonePlatform --ozone-platform=wayland"
    # alias microsoft-edge="microsoft-edge --enable-features=UseOzonePlatform --ozone-platform=wayland"
    abbr -a codeo code "--enable-features=UseOzonePlatform --ozone-platform=wayland"
    abbr -a rstudio 'rstudio; set-keyd-mode rstudio'


end

function set-keyd-mode
set rstudio_mode '
[ids]
*

[main]
leftalt = layer(meta)

[meta]
d = macro(C-d z z)
u = macro(C-u z z)
'
set normal_mode "
[ids]
*

[main]
"
    if test $argv = "rstudio"
         echo $rstudio_mode  > /etc/keyd/default.conf
    else if test $argv = "normal"
         echo $normal_mode  > /etc/keyd/default.conf
    end
  keyd reload
end
