# PS1 Git Status for BASH

This is a small script to show git status on the bash shell:

![Git PS1 Bash](https://github.com/adantop/gitps1/blob/main/gitbash.gif?raw=true "Git PS1 Bash")

## How to use

```git clone https://github.com/adantop/gitps1.git
cd gitps1
echo -e "\nsource $(readlink -f .)/ps1.sh" >> ~/.bashrc
```