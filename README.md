# amdgpu handy kernel options
* enable amd iommu and set to passthrough: 
  - iommu=pt amd_iommu=on
* blacklist some drivers: 
  - modprobe.blacklist=sp5100_tco,radeon
* enable amdgpu for Southern Islands: 
  - radeon.si_support=0 amdgpu.si_support=1
* enable amdgpu for Sea Islands: 
  - radeon.cik_support=0 amdgpu.cik_support=1
* enable amdgpu HDMI/DP audio (kernel >=4.15) : 
  - amdgpu.dc=1
* enable R390 performance fix : 
  - amdgpu.dpm=1
* good reads on amdgpu: 
  - https://wiki.archlinux.org/index.php/AMDGPU  
  - https://en.wikipedia.org/wiki/Graphics_Core_Next#second

# amdgpu-setclock.sh
Lets you manually select the clock speed on an amdgpu card. Usefull for those hot running R9's

# amdgpu-auto.sh
Resets card to auto power management

# amdgpu-fansspeed
Author: DominiLux << Thank you for the good work!
License: Apache Version 2.0
DominiLux has deprecated this project as it was meant to be an example.  He's currently developing his new project in C++ and will have a release ready soon.  It's name is GPUMAGIC and it is specifically engineered not just for mining but for managing any large compute cluster which uses **AMD** Graphics Cards.  You can get more information on it in my repository GPUMAGIC which is also the future home of the code (currently in testing and debugging)

## Installation Instructions:
* sudo apt-get install git
* git clone https://github.com/miruoy/amdgpu
* cd amdgpu
* chmod +x amdgpu-pro-fans.sh

## Usage:
sudo ./amdgpu-pro-fans.sh -s [speed 0 - 100]

## Usage Example:
sudo ./amdgpu-fanspeed.sh s 80
That would set all of your fan speeds to 80 percent of their maximum speed.  The argument works perfectly as of the current stable release.

## Notes:
Tested on openSuSE Leap 15.0 with amdgpu open linux drivers in kernel 4.17.  It is now compatible with all Radeon R8 Series, R9 Series, and RX Series graphics cards.

This version defaults to all adapters.
