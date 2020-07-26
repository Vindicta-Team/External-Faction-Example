# External Faction Example for Vindicta

This is the base project for adding factions to Vindicta as external addons. The project is easy to configure and has build script which produces proper arma addon with signed PBO files.

Factions can be added this way since Vindicta version 0.46.

Rules for creating factions and loadouts through this method are same as for the standard way. You can find information at [Vindicta Wiki](https://github.com/Sparker95/Vindicta/wiki).

# How to use

## 1. Requirements
1. Install [Arma Tools](https://store.steampowered.com/app/233800/Arma_3_Tools/)
2. **NO** knowledge of how to build an arma addon is required. Build script will handle this.

## 2. Modify these files:
Modify these files by providing proper names, descriptions and links wherever you see `<ChangeMe>`:

- `mod.cpp`
- `addon\config.cpp`

Edit `PBO_FILE_NAME.txt`. Its content must contain a proper string without spaces or 'weird' characters and without a newline at the end. It also must be unique as it will be PBO file name loaded by Arma. 

## 3. Add faction and loadouts

### Edit config.cpp

Open `addon\config.cpp`. You will see something like this:
```
	class MilitaryFactionExample : VinExternalFactionBase {
		loadoutsInitFile = PATH_TO_FILE(initLoadouts.sqf);
		file = PATH_TO_FILE(initMilitary.sqf);
		version = 1;
	};
```
Here you must rename `MilitaryFactionExample` to a unique class name - most likely matching your faction name, again without any spaces. Each new class in `VinExternalFactions` class has an entry for one faction definition file (in this example `initMilitary.sqf`). If you are going to add more than one faction to this PBO file, add more classes, but replace  `loadoutsInitFile = PATH_TO_FILE(initLoadouts.sqf);` to `loadoutsInitFile = "";` because `initLoadouts.sqf` must be referenced only once, it will have initialization code for all the loadouts in this pbo file.

### Edit faction files

In this example only `initMilitary.sqf` is provided. Faction files added through addon follow same rules as faction files added through mission. You can add more faction files, but you will need to add a new class for each new faction through `config.cpp` as described above.

### Add loadouts

Loadouts can be added to `addon\loadouts` folder. File name of the loadout file (without .sqf extension) will match to loadout name used in the mission.

## 4. Build arma addon

If you have just installed Arma Tools, you might need to run it at least once to finish setup. You can launch the tools from Steam.

Open `buildArmaMod.ps1`, find this line:
`$armaToolsFolder = "C:\Program Files (x86)\Steam\steamapps\common\Arma 3 Tools"`

Ensure that it is pointing at the correct Arma tools installation folder.

Run `buildArmaMod.ps1` (right click -> Run with Powershell).

The generated addon will be in `_build` folder. You can load it as a local Arma mod or upload it to Steam Workshop through `Arma Tools -> Publisher`.

## 5. Try it in Vindicta
If all is correct, you will see your faction in faction selection screen at game start.
To be sure, search through .rpt file for errors. Use the class name you provided in `config.cpp` as search filter.

For this example the lines in the rpt file are:
```
 3:43:49 "[Template] Initializing loadouts from addon: MilitaryFactionExample, path: VinFactionExample\initLoadouts.sqf"
 3:43:49 "addLoadout: VinFactionExample\loadouts\TheHunterDude.sqf"
 3:43:49 "addLoadout: VinFactionExample\loadouts\TheSuperDude.sqf"
```

```
 3:43:49 "[Template] Initializing faction from addon: MilitaryFactionExample, path: VinFactionExample\initMilitary.sqf"
 3:43:49 "[Template] Initializing template from file: VinFactionExample\initMilitary.sqf"
```
