# .dotfiles
Personal config files

Based on HackerNews discussion
https://news.ycombinator.com/item?id=11070797

`git init --bare $HOME/.dotfiles` <br>
or <br>
`git clone --bare $REPO_URL $HOME/.dotfiles` <br> 

`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'` <br> 
`dotfiles config --local status.showUntrackedFiles no`
