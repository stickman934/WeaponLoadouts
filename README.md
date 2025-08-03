# Weapons Loadouts

This is a simple menu script for weapon loadouts.

## Requirements

- NativeUI

## Installation

1. Download the script
2. Put the script in your resources
3. Add ```ensure WeaponLoadout``` to your server.cfg

## Configuration

```Config.Command = 'loadout'``` - Name of the ingame command (eg. /loadout) <br>
```Config.Keybind = 'F9'``` - Keybind for opening the menu (Can be changed in game settings as well)<br>
```Conifg.Description = 'SOME TEXT HERE'``` - Description in menu

### Loadouts example
```
['Patrol'] = { 
    {weaponName = 'weapon_flashlight', weaponComponents = {}},
    {weaponName = 'weapon_nightstick', weaponComponents = {}},
    {weaponName = 'weapon_combatpistol', weaponComponents = {'COMPONENT_AT_PI_FLSH'}},
    {weaponName = 'weapon_carbinerifle_mk2', weaponComponents = {'COMPONENT_AT_AR_FLSH', 'COMPONENT_AT_SIGHTS', 'COMPONENT_AT_AR_AFGRIP_02'}},
},
['SWAT'] = { 
    {weaponName = 'weapon_flashlight', weaponComponents = {}},
    {weaponName = 'weapon_nightstick', weaponComponents = {}},
    {weaponName = 'weapon_combatpistol', weaponComponents = {'COMPONENT_AT_PI_FLSH'}},
    {weaponName = 'weapon_carbinerifle_mk2', weaponComponents = {'COMPONENT_AT_AR_FLSH', 'COMPONENT_AT_SIGHTS', 'COMPONENT_AT_AR_AFGRIP_02'}},
    {weaponName = 'weapon_sniperrifle', weaponComponents = {'COMPONENT_AT_SCOPE_MAX'}},
},
```