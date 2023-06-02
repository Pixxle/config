# Configuration folder

### Setup process
The setup is not yet completed and requires some manual steps still

```bash
git clone https://github.com/Pixxle/config.git $HOME/.config
source $HOME/.config/shell/load.sh
setup-terms
install-common-tools

:CocInstall coc-go
:CocInstall 
:call mkdp#util#install()
```
