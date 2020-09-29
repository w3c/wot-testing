# WoT TD implementation in RIOT OS

This implementation is still a work in progress. (See Todos and Fixmes in the source code)
So, take it with a grain of salt.

If you want to support the project financially or by contributing to the code, 
send an email to [Philipp Blum](mailto:philipp-blum@jakiku.de)

## Features not supported

- `DigestSecurityScheme`, ` APIKeySecurityScheme`, ` BearerSecurityScheme`, `PSKSecurityScheme` and 
` OAuth2SecurityScheme`,
- Only `application/json` for content-type
- ` ExpectedResponse`
- `@type`, `title`, `titles`, `description`, `descriptions` and `uriVariables` in  InteractionAffordance

## Code structure

### Header file

`sys/include/wot.h` WoT TD structs and APIs for creating the thing struct

`sys/include/wot/` WoT TD serialization API and WoT TD CoAP API

### C files

`sys/net/wot/` WoT TD implementation

`tests/wot_coap/` Generic WoT TD test

## How to use the WoT integration in RIOT?

### Prerequisites

- Unix OS (MacOS should work as well)
- Make
- gcc
- git

### Setup

1. Install Python 3 and the package manager

   Ubuntu
   ```bash 
   sudo apt-get install -y python3-all
   sudo apt-get install -y python-pip3 
   ```
   
2. If your Linux distribution has Python 2 pre-installed, make sure that it uses Python 3 by default

   ```bash 
   echo "alias python=python3" >> ~/.bashrc 
   ```

3. Clone the RIOT fork

    ```bash 
    git clone https://github.com/Citrullin/RIOT.git
    ```
    
4. Checkout the PlugFest branch
    
    ```bash 
    cd RIOT
    git checkout wot_plugfest_09_2020
    ```
5. Change into the WoT TD CoAP test directory

    ```bash 
   cd tests/wot_coap/
   ```

### Steps (native, virtualization)

1. Set up a virtual network

    ```bash 
    sudo ./dist/tools/tapsetup/tapsetup -c 2
    ```
    This will create one bridge called `tapbr0` with two interfaces `tap0` and `tap1`

2. Flash and run the WoT CoAP test

    ```bash
    make flash term BOARD=native PORT=tap0
    ```
    Flash is the target used for flashing microcontroller, while term is the target to open the terminal.
    In this case we flash a virtualized target called native.

3. Get the virtual devices IP address

    ```bash 
    ifconfig
    ```
    
    This command returns all IP addresses for all interfaces. Since there isn't any routing yet, you need to use
    the link-local address. 

4. Interact with the virtual device

    You are now able to interact with the virtual device. The device provides a WoT TD under 
    `/.well-known/wot-thing-description` according to the wot-discovery specs. (The wot-discovery is not implemented yet)
    You can use for example the [libcoap client](https://github.com/obgm/libcoap) in `libcoap/examples`
    Since we are using a link-local address, we also have to provide the zone id. In this case it is `tapbr0`.
    The request should look like this:
    ```bash 
    ./coap-client -m get coap://[fe80::9830:4dff:fe65:4073%tapbr0]/.well-known/wot-thing-description
    ```

### Steps (microcontroller, ARM based)

You need a microcontroller/development board [supported by RIOT OS](http://riot-os.org/api/group__boards.html). 
This guide uses the nRF52832 with IPv6 over BLE. These steps differ for microcontroller with IEEE 802.15.4.
You need to compile a linux kernel with the 6LoWPAN kernel modules, before you can connect your linux machine to your
microcontroller. For IPv6 over BLE the kernel module is called `bluetooth_6lowpan`. You also need a Bluetooth > 4.1
or IEEE 802.15.4 dongle, in order to connect your microcontroller to your linux system.

1. Remove any existing ARM toolchain

    For Debian/Ubuntu
    ```bash 
    sudo apt remove binutils-arm-none-eabi gcc-arm-none-eabi libnewlib-arm-none-eabi
    ```

2. Get the latest [ARM toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads)

3. Untar the new ARM toolchain. Replace the NAME_AND_VERSION_OF_TOOLCHAIN placeholder 
with the name of the toolchain file you downloaded
   
   ```bash 
   tar -xjvf NAME_AND_VERSION_OF_TOOLCHAIN.tar.bz2
   ```
   
4. Move the toolchain to the /opt/ directory. Replace the GCC_ARM_DIRECTORY_NAME placeholder with the directory 
where you untarred the toolchain
   
   ```bash 
   sudo mv GCC_ARM_DIRECTORY_NAME/ /opt/
   ```
  
5. Open the .bashrc file in your $HOME directory

    ```bash
   sudo nano .bashrc 
   ```
   
6. At the bottom of the file, add the ARM toolchain's bin directory to your PATH variable

    ```bash 
   export PATH=$PATH:~/.local/bin/:/opt/GCC_ARM_DIRECTORY_NAME/bin 
   ```

7. [Install OpenOCD](https://github.com/RIOT-OS/RIOT/wiki/OpenOCD)

8. Install one of these programmer toolchains, depending on the programmer that you're using
   Option 1: [Install the J-Link or J-Link OB toolchain](https://gnu-mcu-eclipse.github.io/debug/jlink/install/)
   Option 2: [Install the DAPLink toolchain.](https://github.com/mbedmicro/pyOCD#installing)
   Make sure that you install this toolchain using the pip3
   command.
   
9. Connect your microcontroller to your computer. If you use an external programmer, connect the programmer to the 
   microcontroller/board accordingly.
   
10. Run and flash the WoT CoAP test
    
    The value for `BOARD` is the directory name of the board in `RIOT/boards`
    The value for `PROGRAMMER` can be `jlink`, `bmp` (Black magic probe), `edbg` (Amtel Embedded Debugger), `openocd`,
    `bossa` (Basic Open Source SAM-BA Application), `pyocd`.
    Not all boards support all programmer. You have to use a programmer supported by your microcontroller/board.
   
    Example:
    ```bash
    make flash term BOARD=nrf52dk PROGRAMMER=bmp
    ```
    
11. Advertise your microcontroller

    If you use a BLE capable microcontroller, such as the nRF52 series, you can now connect your board to your linux machine.
    ```bash 
    > ble adv
    2020-09-29 06:43:21,744 #  ble adv
    2020-09-29 06:43:21,748 # success: advertising this node as 'bleRIOT'
    ```
    
12. Load and enable the kernel module

    Ubuntu
    ```bash 
    sudo modprobe bluetooth_6lowpan
    echo 1 | sudo tee /sys/kernel/debug/bluetooth/6lowpan_enable
    ```
    
13. Reset your Bluetooth dongle

    ```bash 
    sudo hciconfig hci0 reset
    ```

14. Connect your microcontroller to your linux machine

    You can get the microcontrollers MAC address with
    ```bash 
    ble info
    ```
    
    You need to connect to your microcontroller through the `6lowpan_control` on your linux machine.
    ```bash 
    echo "connect FA:B6:41:43:B5:AB 2" >/sys/kernel/debug/bluetooth/6lowpan_control
    ```
    
    The microcontroller should show some message in the terminal when the connection was successful.
    ```bash 
    > 2020-09-29 08:57:57,763 #  event: handle 0 -> CONNECTED as SLAVE (00:1A:7D:DA:71:13)
    ```
    
    You can get the link-local address of the device with 
    ```bash 
    ifconfig
    ```

15. Interact with the device

    You are now able to interact with the device. The device provides a WoT TD under 
    `/.well-known/wot-thing-description` according to the wot-discovery specs. (The wot-discovery is not implemented yet)
    You can use for example the [libcoap client](https://github.com/obgm/libcoap) in `libcoap/examples`
    Since we are using a link-local address, we also have to provide the zone id. In this case it is `bt0`.
    The request should look like this:
    ```bash 
    ./coap-client -m get coap://[fe80::9830:4dff:fe65:4073%bt0]/.well-known/wot-thing-description
    ```