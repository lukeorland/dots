# dots

## dependencies

- git
- ansible
- dependencies of
  [YouCompleteMe](https://github.com/Valloric/YouCompleteMe#installation)

## install

clone:

    git clone git@github.com:lukeorland/dots.git ~/.dots

run:

    cd ~/.dots
    ansible-playbook ansible-install.yml

to clean up all the backup files now cluttering your home directory, run
(BE CAREFUL!):

    rm -rf ~/.*.bak.*
