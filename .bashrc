
# EXTERNAL - to check
for file in ~/.extra/{secrets.sh,alkemics.sh,bash_aliases}; do
        . "$file"
done
unset file

# quick shortcuts
export ALKREPS=~/Alkemics/repositories
export GOALK=~/Alkemics/go_repositories/src/github.com/alkemics


# SSH AGENT
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent`
    ssh-add
fi

# GO
[[ -s "/Users/leonard/.gvm/scripts/gvm" ]] && source "/Users/leonard/.gvm/scripts/gvm"
gvm use go1.11.6
export GOPATH=~/Alkemics/go_repositories


# ICU
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"


# PATH
# go
export PATH=$PATH:$GOPATH/bin
# node
export PATH="$PATH:/usr/local/opt/node@10/bin"
# icu
export PATH="$PATH:/usr/local/opt/icu4c/bin"
export PATH="$PATH:/usr/local/opt/icu4c/sbin"
# mysql
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/usr/local/sbin

# OTHERS
# luigi
export LUIGI_CONFIG_PATH=~/Alkemics/repositories/service-ml/alk_service_ml/application/config/client.dev.cfg

