VERSION=2.6
wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
tar xf tmux-${VERSION}.tar.gz
rm -f tmux-${VERSION}.tar.gz
cd tmux-${VERSION}
./configure
make
make install
cd -
rm -rf /usr/local/src/tmux-*
mv tmux-${VERSION} /usr/local/src
