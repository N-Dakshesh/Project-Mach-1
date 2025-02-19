# Project-Mach-1
This repository contains information to support the high powered rocketry project at the Imperial College Space Society. It documents the electronic Command and Control Modules which are used within the project.

## Repository Structure
The repository structure is based on the high level electronics modules:

* [Flight Computer](https://github.com/ImperialSpaceSociety/Project-Mach-1/blob/master/Flight%20computer)
* [docs - Top Level Specfications and Documents](https://github.com/ImperialSpaceSociety/Project-Mach-1/blob/master/docs)

Each Module description has the following structure:

* ICSS Specifications
* External specifications, references and documentation
* Electronic Hardware (schematics and PCB)
* Firmware
* Physical Hardware (CAD)

## Quick Reference
The following is intended to provide a view for the casual browser of the project content.


* The [Flight Computer](https://github.com/ImperialSpaceSociety/Project-Mach-1/blob/master/Flight%20computer) has these key role:
  * Unambiguously capture flight data for subsequent analysis
  * Verify and prove performance record data ( Mach)
  * Support it's own successful recovery


## Rocket flight computer requirements:
* flexible for two stage or one stage rocket
* must have buzzer
* must have flashing LEDs to help with recovery on the ground
* must have usb programmer and possibly for accessing stored data
* 3 mosfets for rocket trigger, parachute triggering, spare
* rocket to ground telemetry link
* GPS for tracking and recovery
* runs at 3.3V logic levels(CMOS)
* 9 dof acclermoeter, gyroscope, compass. Max accleration would be 20g
* pressure(and temperature) sensor to measure altitude
* current sensing to see the amount of current going into fuses
* Mosfet must be able to supply 1.2 amps for at least 10milliseconds. Bridge wire resistance is 1.2-1.8 Ohms
* Must be able to run for at least 1 hour continueously
* must be hand solderable. Perferably
* 100Hz sample rate from sensors(except GPS)
* must record data continueously for at least 3min
* 14 parameters to record: *4 characters*:{accl_x, accl_y, accl_z, gyro_x, gyro_y, gyro_z, compass_x, compass_y, compass_z} + *6 characters:*{pressure}+ *3 characters:*{temperature}+ *7 characters*{Longitude, latitude}+*4 characters:*{altitude}
Assuming ascii encoding, 504 bits per string for raw data. Including commas and carriage return, each reading is ~600 bits.
* Total data storage required: 600bits * 60s * 100hz * 3min = 10.8 Mbits = 10800000 bits

## Major components of V1.1 flight computer
* ST Microelectronics H3LIS100DL: 100g 3-axis accelerometer
* ST Microelectronics LSM9DS1: 9 degree-of-freedom Accelerometer, Gyroscope and Magnetometer in 3 axis
* TE Connectivity MS5607: Temperature and pressure sensor
* Sillicon Labs SI4463: 433 Mhz ISM band Telemetry radio transceiver
* Ublox MAX M8Q: GPS module
* Atmel SAMD21J18: Microcontroller 64 pin TQFP package
* Vishay Si7232DN: Dual N-Channel 20 V (D-S) MOSFET for 2 channel pyros
* Molex 2066400001: GNSS Active Patch Antenna with Low-Noise Amplifier
* Winbond w25q64JV: Flash chip 64 Mbytes

# Flight history

This flight computer was launched in July 2021 but was not recovered. Its now very easy to program using platform.io. No need to mess with board files.

However, the flight computer has 4 major issues.
1. The telemetry radio is terrible. The max range is only around 80 meters, as we discovered at the launch site.
2. The flash chip is quite small. It can only record for around 40 minutes at 3-4 readings a second.
3. The flash write speed is slow. It could be a software issue. I could only write 3-4 readings a second.
4. The position of the power connector for battery is in an awkward position, making it difficult to attach the battery

It may be best to start from scratch using a well known processor, such as an ESP32, and a well designed radio module. From the flight, we discovered that the radio has to work flawlessly. Or else, we will loose the rocket. So maximising range and reliablity of the telemetery is vital. An off the shelf radio module as they will likely have all the RF systems optimised. Its quite hard to do it on a custom PCB.

## Software architecture
We use the Arduino development environment to program the rocket flight computer. We use the arduino board files based off the Adafruit ItsyBitsy M0 Express, which uses the G variant of the SAMD21. The flight computer uses the J variant. 

The main buses are as follows:

`wire` is the main I2C bus for the sensors including the:
* ST Microelectronics H3LIS100DL: 100g 3-axis accelerometer
* ST Microelectronics LSM9DS1: 9 degree-of-freedom Accelerometer, Gyroscope and Magnetometer in 3 axis
* TE Connectivity MS5607: Temperature and pressure sensor
* Ublox MAX M8Q: GPS module

`wire1` is connected to a grove connector on the PCB, but not currently connected to anything.

`Serial` is used for printing out debug info via USB to a serial monitor(running on a computer)

`Serial1` is used for a secondary connection to the Ublox MAX M8Q: GPS module

`SPI1` is used to connect the Winbond w25q64JV: Flash chip 64 Mbytes

`SPI` is used to connect to the Sillicon Labs SI4463: 433 Mhz ISM band Telemetry radio transceiver



## How to setup
# Burning the bootloader
1. Install Atmel studio. It can be downloaded from the [atmel site](https://www.microchip.com/mplab/avr-support/atmel-studio-7). Ensure that you download the SMART ARM MCU option like so: ![image](https://user-images.githubusercontent.com/26815217/97048803-8e224e00-1572-11eb-8974-1dc5bd169e97.png)
2. Connect up the flight computer to the J-Link EDU like so. Note the positions and colours of wires. Getting them the wrong way around could cause reverse polarity issues. The usb connector on the flight computer must be connected to the Computer.![smaller](https://user-images.githubusercontent.com/26815217/97049723-181ee680-1574-11eb-8998-49b052f84ce9.jpg)
3. Open up Atmel Studio and navigate to Tools > Device Programming like so: ![image](https://user-images.githubusercontent.com/26815217/97049151-1bfe3900-1573-11eb-92dd-a2e1868a808a.png)
4. Ensure that the device selected is the ATSAMD21J18A. The default name may be a very similar looking name so make sure you don't mix it up. Click apply.: ![image](https://user-images.githubusercontent.com/26815217/97049270-5b2c8a00-1573-11eb-8d83-f50c7edb5846.png)
5. Now navigate to the `Memories` tab. You will now burn the custom Arduino boot loader into SAMD21 on the flight computer with Atmel Studio. The bootloader is found in the latest releases by adafruit: https://github.com/adafruit/uf2-samdx1/releases/. Look for the bootloader for the `itsybitsy_m0`. We can use the same bootloader as the Itsybitsy M0 from adafruit. Download the bootloader to your computer and select that file.

![image](https://user-images.githubusercontent.com/26815217/122453656-7a64a580-cfa2-11eb-8464-177831368607.png)

 Click the `Program` button once selected the right bootloader: ![image](https://user-images.githubusercontent.com/26815217/97049436-a3e44300-1573-11eb-92fe-02f36d6b8130.png)

Ideally, once the Arduino bootloader is uploaded, the Segger debugger will not be necessary anymore; All future programming can be done with the Arduino IDE.

# Using Platform.io to program the flight computer.
We use Platform.io to program the flight computer as its much more conventient than using the Arduino environment. The platform.ini file captures all the dependencies(libraries, board files) and automatically downloads them. It even downloads the complilers all in the background, so its a simple matter of a single click on the`upload` button to compile and upload to the flight computer.

### Project code
There are 4 pieces of code that are required.
1. [main_code](main_code/). This is the code that flies on the rocket flight computer. It polls all the sensors(GPS, Accelrometers, barometer) and logs them to the SPI flash chip 3-4 times a second. It runs FreeRTOS for scheduling. 
2. [ground_station_receiver](Software/Arduino%20code/ground_station_receiver/). This is the code that runs on the ground station. It will receive packets from the rocket flight computer, and print out the location of the flight computer(longitude, latitude, altitude) and the received signal strength.
3. [spi_flash_dumper](Software/Arduino%20code/spi_flash_dumper/). The flash dumper must be run on the flight computer after the launch. It will dump all the contents of the flash chip, which has stored all the flight data. The format will be in a csv format. The fields in each line will be in the following format:
```
gps_unix_time, gps_millisecond, timestamp, longitude, latitude, altitude, temperature, pressure, h3lis_gyro[0], h3lis_gyro[1], h3lis_gyro[2], h3lis_accelerometer[0], h3lis_accelerometer[1], h3lis_accelerometer[2], lsm9d_gyro[0], lsm9d_gyro[1], lsm9d_gyro[2], lsm9d_accel[0], lsm9d_accel[1], lsm9d_accel[2], lsm9d_mag[0], lsm9d_mag[1], lsm9d_mag[2]
```
4. [spi_flash_deleter](Software/Arduino%20code/spi_flash_deleter/). This program must be run to delete all the contents of the spi flash chip. After a flight, there is a good chance that the flash chip will be full, so delete all contents by running this code on there. Note, the user will have to type in `OK` into the serial terminal inorder for the erase to happen.

### How to upload to flight computer.
To get platform.io, install [Visual Studio code](https://code.visualstudio.com/). Then get the [platform.io](https://platformio.org/install) plugin. Then open the flight computer project you want to use. It should look like in the picture below. Hit the upload button as shown in the picture below to compile and upload to the flight computer. Also, ensure your computer in connected to the device via a USB cable. If all fails, try uploading the boot loader again as described in the [Burning the bootloader](#burning-the-bootloader) section.


![image](https://user-images.githubusercontent.com/26815217/135834528-22b97ea2-5a86-4783-be0e-1b39e043973d.png)


# Using Arduino to program(depreciated)
This was the old way of programming the flight computer, but its no longer used. Use the method described in the [Using Platform.io to program the flight computer](#using-platformio-to-program-the-flight-computer) section.
1. Install the Arduino IDE
2. Install Arduino support for the SAMD series of microcontrollers. To do so, go to file > preferences and add `https://adafruit.github.io/arduino-board-index/package_adafruit_index.json` to Additional Board Manager Urls like so: ![image](https://user-images.githubusercontent.com/26815217/97046336-228ab180-156f-11eb-9b23-e58ebe139e13.png)
3. Then go to Tools > Boards > Boards Manager like so:![image](https://user-images.githubusercontent.com/26815217/97046437-4cdc6f00-156f-11eb-8568-0db63647302c.png)
4. Then install the SAMD core by searching for Arduino SAMD Boards (32-bits Arm Cortex-M0+) like so: ![image](https://user-images.githubusercontent.com/26815217/97046683-a47ada80-156f-11eb-993c-f97d2ba23dc1.png)
5. Then install the Boards support for Adafruit SAMD boards, which our Flight computer is based off. Install version 1.5.9. Put in `Adafruit SAMD Boards` into the search bar.![image](https://user-images.githubusercontent.com/26815217/97047112-5d411980-1570-11eb-8788-4c5ba38919c8.png)
6. Find out where your newly downloaded board files are found by going here to the file > preferences. In this case the board files are in `C:\Users\Medad\Documents\ArduinoData`. ![image](https://user-images.githubusercontent.com/26815217/97037529-4e069f80-1561-11eb-9e55-63b4ba6fe1d4.png).
7. Now you will have to replace these board files with our own custom board files. Go to the directory found in the previous step and navigate to`ArduinoData\packages\adafruit\hardware\samd` where you will find a folder like `1.5.9`. Now you need to delete this folder, and replace it with our custom folder of board files that can be found in this repo: `Project-Mach-1\Flight computer\Software\Custom board files for flight computer\1.5.9`.
8. Now restart Arduino IDE so that it can update the board file location.
9. Now select the rocket flight computer as the board to use, like so in the picture: ![image](https://user-images.githubusercontent.com/26815217/97038067-26640700-1562-11eb-93f9-622826eb055e.png)
10. Now select the upload and serial port by going to Tools > Port:![image](https://user-images.githubusercontent.com/26815217/97345662-3f322c80-1882-11eb-8488-e3cda913a37f.png)
11. Now run the i2c scanner program in `Project-Mach-1\Flight computer\Software\Arduino code\i2c_scanner` on the arduino editor. You will see data on the serial port like this: ![image](https://user-images.githubusercontent.com/26815217/97045258-5a90f500-156d-11eb-95d6-a1918af80ee6.png)

## How to run the main program.
Assuming you have completed the previous steps, navigate to `Project-Mach-1\Flight computer\Software\Arduino code\main_flight_computer_code` and run `main_flight_computer_code.ino` on the Arduino editor. This is where we will be doing further updates to the main project. Note how we directly add the library files into this project. These can be seen in the tabs at the top of the editor: ![image](https://user-images.githubusercontent.com/26815217/97050319-10137680-1575-11eb-93a8-b61fe4b973d9.png)

The reason why we do this is the stock libraries downloaded directly from Arduino often have minor bugs which we have to fix. Therefore, we make a copy of the library files and load them directly into this project.

## libraries directory
All our libraries are kept here: `Project-Mach-1/tree/master/Flight%20computer/Software/Arduino%20code/libraries`

## IC information

## Diagnositics from the SI4463 chip we use
```
Get Device Info:

Revision: 11
Part: Si4463
Part Build: 0
Id: F
Customer: 0
ROM_ID: 3  (3 = revB1B, 6 = revC2A)
Rev External: 3
Rev Branch: 0
Rev Internal: F
Patch: 0
Func: 1
Radio Temperature: 27.88 deg C
Radio Voltage: 3.29 Volts
```

### Diagnostics of Flash chip
```
Initialising..........
Chip Diagnostics initiated.

No Chip size defined by user. Checking library support.
Chip identified. This chip is fully supported by the library.

SPIMemory Library version: 3.3.0

JEDEC ID: 0xEF7017
Man ID: 0xEF
Memory ID: 0x70
Capacity: 8388608
Max Pages: 32768
Unique ID: 114518745233664, 0x688C52A779213900
-----------------------------------------------------------------------------------------------------------------------------
							Testing library code
-----------------------------------------------------------------------------------------------------------------------------
			Function		Test result			     Runtime
-----------------------------------------------------------------------------------------------------------------------------
			Power Down		   PASS				      53 us
			Power Up		   PASS				      45 us

			Erase Chip		   PASS				      13.618 s
			Erase 72KB		   PASS				      214.66 ms
			Erase 64KB		   PASS				      163.17 ms
			Erase 32KB		   PASS				      119.84 ms
			Erase 4KB		   PASS				      39.14 ms
-----------------------------------------------------------------------------------------------------------------------------
			Data type		I/O Result	      Write time	      Read time
-----------------------------------------------------------------------------------------------------------------------------
			Byte			   PASS			108 us			48 us
			Char			   PASS			120 us			46 us
			Word			   PASS			124 us			48 us
			Short			   PASS			126 us			52 us
			ULong			   PASS			140 us			58 us
			Long			   PASS			128 us			52 us
			Float			   PASS			140 us			54 us
			Struct			   PASS			282 us			94 us
			Byte Array		   PASS			2.07 ms			458 us
			String			   PASS			408 us			164 us
-----------------------------------------------------------------------------------------------------------------------------

```

### Radio working
Image shows the view on SDR sharp when transmitting, and the RX data on a second flight computer. Transmissions done on the first one.
![image](https://user-images.githubusercontent.com/26815217/123351184-7f9e9300-d554-11eb-8eb3-ddb65def1cbe.png)

## Current progress
* 25/9/19: The circuit board design files have been sent for manufacturing. Renders are as shown below.
![alt text](https://github.com/ImperialSpaceSociety/Project-Mach-1/blob/master/Flight%20computer/Hardware/circuit%20board%20design%20v1.1/Capture%20ft1.PNG)
![alt text](https://github.com/ImperialSpaceSociety/Project-Mach-1/blob/master/Flight%20computer/Hardware/circuit%20board%20design%20v1.1/Capture%20ft2.PNG)

## TODO
* build a base station
* build the rocket
* write all driver code for rocket flight computer(consider using FreeRTOS)
* assemble all flight computer PCBs by soldering
* Test all functions
* Launch!


## License

Hardware is Licensed under CERN OHL v.1.2 or later https://www.ohwr.org/documents/294 No warranty is provided for this documentation implied or otherwise.

Software is licensed under MIT License.

MIT License

Copyright (c) 2018 Imperial College Space Society

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
