### Dependencies

```bash
sudo pacman -S neovim tmux zsh kitty
```

[dracula](https://draculatheme.com/)
[ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
[nvm](https://github.com/nvm-sh/nvm)

### kitty

Dotfile installation

```bash
ln -s $HOME/.config/kitty .config/kitty
```

### neovim

Dotfile installation

```bash
ln -s $HOME/.config/nvim .config/nvim
```

System clipboard

```bash
sudo pacman -S xclip
```

Fuzzy

```bash
sudo pacman -S ripgrep fzy
```

Terraform-ls

```bash
yay terraform-ls
```

### tmux

Dotfile installation

```bash
ln -s $HOME/.tmux.conf .tmux.conf
```

### sh

Generate a new ssh key

```bash
ssh-keygen -o -a 100 -t ed25519
```

Dotfile installation
```bash
ln -s $HOME/.ssh/config .ssh/config
```

