alias ll='ls -alF'
alias la='ls -A' 
alias l='ls -CF' 
alias ls='ls --color=auto' 
alias grep='grep --color=auto' 
alias cls='clear'

# Rust stuffs
alias cr='rustfmt src/main.rs && cargo run'
alias cb='rustfmt src/main.rs && cargo build'

# Flutter stuffs
alias frl='flutter run -d linux'
#alias frw='flutter run -d chrome'
alias fpg='flutter pub get'
#alias f='flutter '

# Git stuffs
alias gita='git add .'
alias gits='git status'
alias gitc='git commit -m' 
alias gitp='git push'


alias upgrade='sudo apt update && sudo apt upgrade'
alias video='mpv '
alias rr='locate reboot-required'
alias dd='dd status=progress '
alias fcr='echo \"flutter\ create\ \-\-project\-name\ Calculator\ \-\-org\ com\.vishnu\ \-\-description\ \"A\ simple\ calculator\ app\ to\ check\ my\ Flutter\ knowledge\.\ \ Calculator\/'
alias m='make '
alias mr='make run'
alias cdp='cd /home/saivishnu/Programs'
alias vim='nvim'
alias pg='ping google.com'
current_distro=$(awk -F= '$1 == "ID" { print $2 }' /etc/*-release)
close_distro=$(awk -F= '$1 == "ID_LIKE" { print $2 }' /etc/*-release)
#if ["$close_distro" = "arch"]; then
	# Some Arch based things
	alias install='sudo pacman -S'
	alias update='sudo pacman -Syu'
	alias upgrade='sudo pacman -Syyu'
	alias uninstall='sudo pacman -Rnsu'
#elif  [$(close_distro | grep debian) = "debian"]; then
	# Some Debian based things
#        alias install='sudo apt install'
#	alias update='sudo apt update'
#	alias upgrade='sudo apt upgrade'
#	alias uninstall='sudo apt remove'
#else
	# Some Fedora things
#	alias install='sudo dnf install'
#	alias upgrade='sudo dnf upgrade'
#	alias uninstall='sudo dnf remove'
#fi
alias cls='clear'
