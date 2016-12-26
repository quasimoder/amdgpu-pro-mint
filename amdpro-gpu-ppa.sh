apt install cdbs dh-make dkms execstack dh-modaliases linux-headers-generic libqtgui4 xserver-xorg-dev debhelper lib32gcc1 -y
cd /tmp
mkdir amdgpu-pro-ppa
cd amdgpu-pro-ppa
wget https://raw.githubusercontent.com/quasimoder/amdgpu-pro-mint/master/amd_mint.patch
wget --referer=http://support.amd.com/en-us/kb-articles/Pages/AMDGPU-PRO-Driver-for-Linux-Release-Notes.aspx https://www2.ati.com/drivers/linux/ubuntu/amdgpu-pro-16.50-362463.tar.xz
tar -Jxvf amdgpu-pro-16.50-362463.tar.xz
cd amdgpu-pro-16.50-362463
patch /tmp/amdgpu-pro-ppa/amdgpu-pro-16.50-362463/amdgpu-pro-install /tmp/amdgpu-pro-ppa/amd_mint.patch
apt update
apt upgrade -y
apt autoremove -y
./amdgpu-pro-install -y

