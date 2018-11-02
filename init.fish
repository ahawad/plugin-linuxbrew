set -l default_linuxbrew_home "/home/linuxbrew"
set -l linuxbrew_bin_path "$default_linuxbrew_home/.linuxbrew/bin"
set -l linuxbrew_sbin_path "$default_linuxbrew_home/.linuxbrew/sbin"
set -l linuxbrew_manpath "$default_linuxbrew_home/.linuxbrew/share/man"
set -l linuxbrew_infopath "$default_linuxbrew_home/.linuxbrew/share/info"

contains -- $linuxbrew_bin_path $PATH
  or set -gx PATH $linuxbrew_bin_path $PATH

contains -- $linuxbrew_sbin_path $PATH
  or set -gx PATH $linuxbrew_sbin_path $PATH

contains -- $linuxbrew_manpath $MANPATH
  or set -gx MANPATH $linuxbrew_manpath $MANPATH

contains -- $linuxbrew_infopath $INFOPATH
  or set -gx INFOPATH $linuxbrew_infopath $INFOPATH

