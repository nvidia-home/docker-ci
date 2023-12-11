git clone https://github.com/gperftools/gperftools.git
sudo apt-get install libunwind8-dev
cd gperftools
./autogen.sh
./configure
make -j8
sudo make install
sudo ldconfig

echo "export LD_PRELOAD=/usr/local/lib/libtcmalloc.so" >> ~/.bashrc
echo "export LD_PRELOAD=/usr/local/lib/libtcmalloc.so" >> ~/.zshrc
