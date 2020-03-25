# Get Miniconda and make it the main Python interpreter
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
rm ./Miniconda3-latest-Linux-x86_64.sh

# Export PATH
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
echo '''
__conda_setup="$('/home/shaneemazur/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/shaneemazur/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/shaneemazur/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/shaneemazur/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
''' >> .bashrc
