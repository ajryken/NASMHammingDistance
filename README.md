# NASM Hamming Distance

This is a program implemented in 32-bit NASM to determine the hamming distance of two equal length strings. The hamming distance is the number of individual characters that must be modified in one string to make that string equal to another. The default strings in this program are 'text' and 'test', which outputs a hamming distance of 1. If 'test' is changed to 'tell', the hamming distance would become 2.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Make is used to build the program using nasm and gcc.

### Installing

**LINUX**
* The programs will compile using the 'make' command and will execute with './hamdist' for the NASM version or './a.out' for the C version.

**WINDOWS**
* Download and install GnuWin32 from http://gnuwin32.sourceforge.net/packages/make.htm
* You will also need to download and install MinGW if you do not already have it. This is needed to run gcc on the Windows command line interface.
* After these are installed, you can follow the Linux instructions to get the programs up and running.
* You can edit the source code using your preferred IDE but SASM (https://dman95.github.io/SASM/english.html) is a great IDE for all major assembly languages. I suggest you install and use this IDE for assembly language programming a$23 ## Authors

* **Addison Ryken** - *Initial implementation* - [ajryken] (https://github.com/ajryken)