## General points
* Install [vundle vim](https://github.com/VundleVim/Vundle.vim) to manage etenxion  
* Run `:PluginInstall` to install plugins 
* Run `:so %` in `.vimrc` to source the latest updates on `.vimrc` file whenever `.vimrc` is changed. 
* Run any command with `:!` for example `:!git` correspondig


  
## Modes  
Switch between modes with `esc` and then type correspondig letter  
  
| modes | key |
|-------|-----|
|normal |`esc`|
|insert |  i  |
|visual |  v  |
  
## normal mode  
  
|  key  |  action  |
|-------|----------|
|   v   |   select |
|   V   |   sleect whole line |
|   y   |   copy   |
|  yy   |   copy line |
|   x   |   cut    |
|   d   |   delete |
|   P   |   paste  |
|   u   |   undo   |
|   zz  |  current line in the center of display |

## Panes
  
|   key   |  action   |
|---------|-----------|
| <ctrl>+w | switch pane |
| q       |  quit  |


## Insert mode

|   key   |   action   |
|---------|------------|
|<ctrl>+n | auto complete |


## Plugins

### fuGITive

|   command   |   action   |
|---------|------------|
| Gstatus | status |
| Gwrite  | add . |
| Gread  |  checkout |
| Gcommit | commit |


### add theme
1. add a theme online. For example [this one](https://github.com/dracula/vim/tree/b7e11c087fe2a9e3023cdccf17985704e27b125d)
2. add `Plugin 'dracula/vim'` or whatever plugin you choose.
3. add `colorscheme dracula`
4. `:so %`

