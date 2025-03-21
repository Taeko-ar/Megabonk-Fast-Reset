# Megabonk Savefile Editor Script


# [WISHLIST THE GAME!!!!!](https://store.steampowered.com/app/3405340/Megabonk/)

# [WISHLIST THE GAME!!!!!](https://store.steampowered.com/app/3405340/Megabonk/)

# [WISHLIST THE GAME!!!!!](https://store.steampowered.com/app/3405340/Megabonk/)


This script allows you to update the `progression.json` file of the game *Megabonk Demo* with pre-defined values to remove all the un-necessary items/tomes/weapons (it keeps it unpurcheased to unlock it if needed). It also handles the Steam ID setup by storing it in `steam_id.txt`.

This was made to "optimize" runs deleting un-necessary items/tomes. It also enables the banana strat reseting the weapon achievement allowing to have 4 weapons instead of 3.

## How to use it

Download the .exe from the [releases](https://github.com/Taeko-ar/Megabonk-Fast-Reset/releases/tag/1.0) tab and execute it. Fill the steam id ([how to get steam id](https://www.wikihow.com/Find-Steam-ID)) and enter `U`.

<img src="./example.gif" width="900" height="500" />



_It's possible to execute it locally without the .exe, just run `& '.\reset_script.ps1'` on the folder where the script lives_

## Requirements

- [Megabonk Demo installed via Steam.](https://store.steampowered.com/app/3405340/Megabonk/)
- Proper permissions to access and modify the save location folder (`C:\Program Files (x86)\Steam\steamapps\common\Megabonk Demo\Megabonk Demo_Data\SavesDir\$steam_id\progressions.json`)


## What does the script do

1. **Steam ID Management**:
   - The script checks if a file named `steam_id.txt` exists in the same directory where the script is located.
   - If `steam_id.txt` is not found, the script prompts the user to enter their **Steam ID** (a numeric value). The Steam ID is then saved in the `steam_id.txt` file.
   - If the file is already present, the script reads the saved Steam ID and displays it to the user.

2. **Updating Game Progress**:
   - When the user enters the command `u` in the script prompt, it performs the following actions:
     - It searches for the **progression.json** file inside the *Megabonk Demo* save directory, based on the saved Steam ID.
     - If the `progression.json` file exists, the script makes a backup of it with a `.bak` extension.
     - The script then updates the `progression.json` file with pre-defined JSON data containing information like game stats, achievements, and purchases.
   
3. **Closing and Relaunching the Game**:
   - Before modifying the `progression.json`, the script checks if the *Megabonk Demo* game is running. If it is, the script forcibly closes the game to prevent file access conflicts.
   - After updating the `progression.json`, the game is relaunched automatically through Steam using the appropriate launch URL.

4. **Change Steam ID**:
   - The user can choose the `change` option to update the saved Steam ID. The script prompts the user to enter a new valid numeric Steam ID, which will be saved in `steam_id.txt`.

5. **Exit**:
   - The user can exit the script by typing `exit`, which ends the script’s execution.

## Notes

- If you enter an invalid Steam ID (non-numeric), the script will prompt you to re-enter it.
- If the *Megabonk Demo* game is running, the script will close it before making updates and then reopen it automatically after the update.

## Troubleshooting

- If the script cannot find the game directory, ensure you have the correct path for the Steam installation or the game is properly installed.
- Make sure you have appropriate permissions to modify files in the `SavesDir` folder.
