# Zandronum Flatpak edition #

## Installation of gamedata ##
* Copy any commercial iwad into the folder `~/.var/app/com.zandronum.Zandronum/.config/zandronum/`
* Optionally, configure the `~/.var/app/com.zandronum.Zandronum/.config/zandronum/zandronum.ini` file to load other directories

## Run with custom wads

## Run with custom wads

### UI
With Doomseeker, you can create a custom game. Then, under mode you can sellect 'Play offline' to start a singleplayer game.

### CLI
Just as with the standalone Zandronum, you can pass commands through using the command line. If you want to play custom wads, you can add them to a sub-directory of `/zandronum/` and then you can directly access then from the terminal:
```
flatpak run --command="zandronum -file ~/.var/app/com.zandronum.Zandronum/.config/zandronum/pwads/PL2.WAD" com.zandronum.Zandronum
```
```
cd ~/.var/app/com.zandronum.Zandronum/.config/zandronum/pwads/
flatpak run com.zandronum.Zandronum -file ./PL2.WAD
```

For more info, see:
* https://wiki.zandronum.com/Command_Line_Parameters

Additionally:
* https://zdoom.org/wiki/Command_line_parameters
* https://zdoom.org/wiki/Installation_and_execution_of_ZDoom

## Accessing files on unconventional spots ##
If you want to access wads in different locations, you might have to adjust the [Flatpak sandboxing permissions](http://docs.flatpak.org/en/latest/sandbox-permissions.html). You can easily do that like this:
```
flatpak override com.zandronum.Zandronum --filesystem=/OTHER/LOCATION/WITH/WADS --user
```
 
