echo "#########################################################"
echo "# jkcoxson and spidy123222's DolphiniOS install script. #"
echo "#########################################################\n\n\n"

if [ "$EUID" -ne 0 ]
  then echo "Please run as root. Exiting..."
  exit
fi

echo "Root check passed, continue install."

apt install git -y

apt-get upgrade -y

apt-get install build-essential checkinstall git autoconf automake -y

apt install libtool m4 automake -y

apt-get install python-dev -y

apt-get install pkg-config -y

apt-get install libavahi-client-dev -y



apt-get install libusb-1.0-0-dev -y

apt-get install libssl-dev -y
apt-get install libxml2-dev -y
apt-get install libplist++ -y


ldconfig

apt-get update -y

git clone https://github.com/libimobiledevice/libplist
cd libplist
./autogen.sh
./autogen.sh
make
make install
cd ../


git clone https://github.com/jkcoxson/libusbmuxd
cd libusbmuxd
./autogen.sh
./autogen.sh
make
make install
cd ../

git clone https://github.com/jkcoxson/libimobiledevice
cd libimobiledevice
./autogen.sh
./autogen.sh
make
make install
cd ../

git clone https://github.com/hjsm23/libgeneral
cd libgeneral
./autogen.sh
./autogen.sh
make
make install
cd ../

git clone https://github.com/hjsm23/usbmuxd2
cd usbmuxd2
git submodule init
git submodule update
./autogen.sh
./autogen.sh
make
make install
cd ../


echo
echo
echo
echo "##############################"
echo "#   Installation Completed.  #"
echo "##############################\n\n\n"

idevice_id
