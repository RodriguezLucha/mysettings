# Linux

* `git clone https://bitbucket.org/rudy_rodriguez/vimsettings.git`
* `sudo yum install vim`
* `chmod 600 id_rsa`
* `ln -s vimsettings/linux/.vimrc .vimrc`
* `ln -s vimsettings/linux/.bashrc .bashrc`

### Under account
* `ln -s /home/rudy/vimsettings/linux/.vimrc .vimrc`
* `ln -s /home/rudy/.vim .vim`
* `ln -s /home/rudy/vimsettings/linux/scripts scripts`


# Windows

* `mklink _vimrc vimsettings\windows\_vimrc`
* `mklink /D C:\Scripts "C:\Program Files (x86)\Vim\vimsettings\windows\aliases\"`
* `mklink "%userprofile%\.gitconfig" "C:\Program Files (x86)\Vim\vimsettings\windows\.gitconfig"`