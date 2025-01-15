Installing sodium

```bash
sudo yum install php8.1-devel php-pear gcc
wget https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
// verify the file integrity https://libsodium.gitbook.io/doc/installation#integrity-checking
tar -xvzf LATEST.tar.gz
cd libsodium-stable
./configure
make && make check
sudo make install
sudo pecl install -f libsodium
//add extension=sodium.so to php.ini
```

Adding sodium to php.ini
```bash
php --ini (shows the location of ini file)
```