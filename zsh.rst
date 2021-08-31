# by SDC
# to virtualenvwrapper
export WORKON_HOME=$HOME/.envs
export PROJECT_HOME=$HOME/SRC
export VIRTUALENVWRAPPER_PYTHON=$(which python2)
source /etc/bash_completion.d/virtualenvwrapper
#source /usr/local/bin/virtualenvwrapper.sh 

# by SDC pipenv
#export PATH="$HOME/.apps/pyenv/bin:$PATH"
export PYENV_ROOT="$HOME/.apps/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/home/scasas/.apps/pyenv/shims:${PATH}"
export PYENV_VIRTUALENV_DISABLE_PROMPT=

#eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
#eval "$(pipenv --completion)"
