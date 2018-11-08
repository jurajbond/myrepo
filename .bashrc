# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PS1="\[\e[32m\][\[\e[m\]\A\[\e[32m\]]\[\e[m\]:\[\e[31m\]\u\[\e[m\]@\[\e[33m\]\h\[\e[m\]:\[\e[32m\]\w\[\e[m\]\$ "
