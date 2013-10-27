# Manlycode's Dotfiles

Dotfiles are the lifeblood of your development flow. You should really back them up. 

### Set up your repository

```bash
mkdir ~/.dotfiles
cd ~/.dotfiles
git init
echo "These are my dotfiles." >> README.md
git add .
git commit -m "Initial commit."
```

### Start moving your dotfiles
```bash
cd .dotfiles
mv ~/.vimrc vimrc.ln
ln -s vimrc.ln ~/.vimrc

mv ~/.vimrc vimrc.ln
ln -s vimrc.ln ~/.vimrc
```
