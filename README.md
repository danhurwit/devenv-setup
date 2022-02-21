# devenv-setup
Scripts and config files to set up development environment

## Setup
The scripts assume the existence of several things:
* a package manager such as `brew` or `apt`
* [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

### Scripts
`shell_install.sh` is useful for first time env setup  
`copy_dotfiles.sh` copies the dotfiles out of the dotfiles directory to the user home directory  
`update_dotfile.sh` copies a specific file based on path to the dotfiles directory. It will replace existing files. 
<br><br>
You will need to run this command `:call mkdp#util#install()` from within vim the first time you use it to enable markdown preview. 


### Linux Specific
*  [Mac key mappings for Linux](https://github.com/rbreaves/kinto) 

### Mac Specific
* [Homebrew](https://brew.sh/)
* [Rectangle (window management)](https://rectangleapp.com/)
* [Karabiner-Elements](https://karabiner-elements.pqrs.org/) (config file located in `/config/karabiner.json`)

### Extras 
* [CopyQ](https://github.com/hluk/CopyQ) Clipboard manager 
