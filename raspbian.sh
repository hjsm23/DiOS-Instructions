echo "#########################################################"
echo "# jkcoxson and spidy123222's DolphiniOS install script. #"
echo "#          Matako Rapbian edit install script.          #"
echo "#########################################################"

if [ "$EUID" -ne 0 ]
  then echo "Please run as root. Exiting..."
  exit
fi

echo "Root check passed, continue install."

apt install git -y

apt-get upgrade -y

apt-get install make autoheader -y

apt-get install build-essential checkinstall git autoconf automake -y

apt install libtool m4 automake -y

apt-get install python-dev -y

apt-get install pkg-config -y

apt-get install libavahi-client-dev -y

apt-get install python-dev --fix-missing -y 

apt-get install libtool-bin -y

apt-get install libc6-udeb -y

apt-get install libc6-dev -y

apt-get install cpp -y

apt-get install gcc-8 -y

apt-get install clang -y

apt-get install doxygen -y

apt-get install libusb-1.0-0-dev -y

apt-get install libssl-dev -y

apt-get install libplist-dev -y

apt-get install libplist -y

apt-get install libplist++-dev -y

apt-get install libplist++-dev -y

apt-get install libplist++ -y

ldconfig

apt-get install cython -y
dpkg --configure -a
python setup.py install

mkdir openssl
cd openssl
wget https://www.openssl.org/source/openssl-1.1.1k.tar.gz
tar xf openssl-1.1.1k.tar.gz
cd openssl-1.1.1k
./config zlib shared no-ssl3
make -j4
make install
cd ..
cd ..

git clone https://github.com/libimobiledevice/libplist
cd libplist
./autogen.sh --prefix=/opt/local --enable-debug
./autogen.sh --prefix=/opt/local --enable-debug
make
make install
cd ../


git clone https://github.com/jkcoxson/libusbmuxd
cd libusbmuxd
./autogen.sh --prefix=/opt/local --enable-debug
./autogen.sh --prefix=/opt/local --enable-debug
make
make install
cd ../

git clone https://github.com/jkcoxson/libimobiledevice
cd libimobiledevice
./autogen.sh --prefix=/opt/local --enable-debug
./autogen.sh --prefix=/opt/local --enable-debug
make
make install
cd ../

git clone https://github.com/jkcoxson/usbmuxd2
cd usbmuxd2
./autogen.sh --prefix=/opt/local --enable-debug
./autogen.sh --prefix=/opt/local --enable-debug
make
make install
cd ../

git clone https://github.com/tihmstar/libgeneral.git
cd libgeneral
./autogen.sh --prefix=/opt/local --enable-debug
./autogen.sh --prefix=/opt/local --enable-debug
make
make install
cd ../




ldconfig
echo
echo
echo
echo "##############################"
echo "#   Installation Completed.  #"
echo "##############################\n\n\n"

idevice_id
