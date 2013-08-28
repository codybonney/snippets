cd ~/Downloads/
curl -o subversion-latest.tar.gz http://apache.mirrors.tds.net/subversion/subversion-1.7.11.tar.gz
tar -xvf subversion-latest.tar.gz

cd ~/Downloads/subversion-1.7.*
sh get-deps.sh neon
cd neon/
./configure --with-ssl
make
sudo make install
cd ..
./configure --prefix=/usr/local --with-neon
make
sudo make install

# using
svn --version
export PATH=/usr/local/bin:$PATH
svn --version