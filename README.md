# .dotfiles
Personal config files

Based on HackerNews discussion
https://news.ycombinator.com/item?id=11070797

`git init --bare $HOME/.dotfiles`
or
`git clone --bare $REPO_URL $HOME/.dotfiles`

`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`
`dotfiles config --local status.showUntrackedFiles no`
