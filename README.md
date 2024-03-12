# NeoVim Confs

## Gui NeoVim On MacOS
I am using the [VimR](https://github.com/qvacua/vimr) on MacOS, it is very neat.

### VimR Installation

`brew install --cask vimr`
- Link: https://formulae.brew.sh/cask/vimr

## Configure NeoVim (VimR)

- Create a conf file: `.config/nvim/init.lua`.

- See the content of the init.lua from this repo.

### Install NeoVim Plugin Manager

### Packer.nvim

I prefer to using [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim).

i. Run command from terminal:

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- Packer Plugin Commands (Run in NeoVim/VimR):

```
:PackerInstall
:PackerSync
:PackerUpdate
:PackerClean
```

- NOTE:
  -  Must include the `wbthomason/packer.nvim` itself as plugin via `use 'wbthomason/packer.nvim'` in `init.lua`,
so that the Packer won't try to remove itself.


