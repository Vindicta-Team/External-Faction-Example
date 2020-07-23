# External Faction Example for Vindicta

This is the base project for adding factions to Vindicta as external addons. The project is easy to configure and has build script which produces proper arma addon with signed PBO files.

Factions can be added this way since Vindicta version 0.46.

# How to use

## 1. Install these tools:
1. [Arma Tools](https://store.steampowered.com/app/233800/Arma_3_Tools/)

## 2. Modify these files:
Modify these files by providing proper names, descriptions and links wherever you see `<ChangeMe>`:

- `mod.cpp`
- `addon\config.cpp`

Edit `PBO_FILE_NAME.txt`. Its content must contain a proper string without spaces or weird characters and without a newline at the end. It also must be unique as it will be PBO file name loaded by Arma. 

## 3. Provide faction description and loadouts

Open `addon\config.cpp`. You will see something like this:
```
	class MilitaryFactionExample : VinExternalFactionBase {
		loadoutsInitFile = PATH_TO_FILE(initLoadouts.sqf);
		file = PATH_TO_FILE(initMilitary.sqf);
		version = 1;
	};
```
Here you must rename `MilitaryFactionExample` to a unique class name - most likely matching your faction name, again without any spaces. Each new class in `VinExternalFactions` class has an entry for one faction definition file (in this example `initMilitary.sqf`). If you are going to add more than one faction to this PBO file, add more classes, but replace  `loadoutsInitFile = PATH_TO_FILE(initLoadouts.sqf);` to `loadoutsInitFile = ""`;
