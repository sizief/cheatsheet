## General points
* Install [vundle vim](https://github.com/VundleVim/Vundle.vim) to manage etenxion  
* Run `:PluginInstall` to install plugins 
* Run `:so %` in `.vimrc` to source the latest updates on `.vimrc` file whenever `.vimrc` is changed. 
* Run any command with `:!` for example `:!git` correspondig
## Set Config
 - `set wildmode=list,longest`
 - `set wildmenu`

  
## Modes  
Switch between modes with `esc` and then type correspondig letter  
  
| modes | key |
|-------|-----|
|normal |`esc`|
|insert |  i  |
|visual |  v  |
  

## Command mode  
|   key   |  action  |
|---------|----------|
|   :w    |   save   |
|   :q    |   quit   |
|   :q!   |  quit without save |
|   :x    |   save and quit |

## Normal mode  
  
|  key  |  action  |
|-------|----------|
|   0   |  start of line |
|   $   | end of line |
| page up | ctrl + u |
|  page down | ctrl + f |         
|  gg   |  start of file |
|   G   |  end of file |
|   v   |   select |
|   V   |   sleect whole line |
|   y   |   copy   |
|  yy   |   copy line |
|   x   |   cut    |
|   d   |   delete |
|   P   |   paste  |
|   u   |   undo   |
|   w   |  next word |
|   zz  |  current line in the center of display |
| di( | delete inside ( |
| di{  | delete inside { |

## Insert mode

|   key   |   action   |
|---------|------------|
| ^ n | auto complete |

## Search

> run `ctags -R .` every time something changed to index latest desfinations. 

|   key   |  action  |
|---------|----------|
|   tag   | find tag |
|  ^ ]    | find defination |
|  ^^   |  go back |
## Tabs

|   key   |   action   |
|---------|------------|
|  tabe  | open new tab |
|  gt  | switch tab |


## Panes
  
|   key   |  action   |
|---------|-----------|
|  bp     |  close last pane |
| ^ w | switch pane |
| q       |  quit  |
| sp      |  split  |
  vsp     |  vertical split |


## Plugins

### Ack
> need to install OS package first.   
  
|   command   |   action   |
|---------|------------|
|  ack   |  search  |


### Vinegar

|   command   |   action   |
|---------|---------|
|    -    |  open menu  |


### FuGITive

|   command   |   action   |
|---------|------------|
| Gstatus | status |
| Gwrite  | add . |
| Gread  |  checkout |
| Gcommit | commit |
| Gdiff  | diff |

### Add theme
1. Select a theme online. For example [this one](https://github.com/dracula/vim/tree/b7e11c087fe2a9e3023cdccf17985704e27b125d)
2. Add `Plugin 'dracula/vim'` or whatever plugin you choose.
3. Add `colorscheme dracula`
4. `:so %`


