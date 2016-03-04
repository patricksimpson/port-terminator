# port-terminator

Because we need a terminator to kill programs on our ports!

## Install

Clone, copy, download the shell script. Run in your terminal.

You'll need execute permissions on this script. Run `chmod +x terminate.sh` in the port-terminator directory. 

## Running

You can pass a port as an argument:

`./terminate.sh 8000` 

Or `./terminate.sh` to prompt you for a port.

![](http://netflixlife.com/files/2015/07/the-terminator.jpg)

## Alias

This is optional, but makes it easier to remember or run this script in the future.
Add an alias to your bashrc (zsh, etc). `alias terminate='~/pathto_your_githubs/port-terminator/terminate.sh'`
