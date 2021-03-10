# Conda
# >>> conda initialize >>>
export CONDA_DEFAULT_ENV="$HOME/anaconda3/envs/conda_env_data_science"
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$($HOME'/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

conda activate env_data_science
conda config --set changeps1 False # hide the name of the conda env in konsole
# <<< conda initialize <<<
