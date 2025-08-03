Config = {}

Config.Command = 'loadout' -- Command to open the loadout menu
Config.Keybind = 'F9' -- Default keybind for the loadout menu

Config.Description = 'SOME TEXT HERE' -- Description for the main menu. You can leave it empty or customize it.

-- You can find weapon names at https://wiki.rage.mp/wiki/Weapons
-- You can find weapon components at https://wiki.rage.mp/wiki/Weapons_Components
Config.Loadouts = {
    ['Patrol'] = { 
        {weaponName = 'weapon_flashlight', weaponComponents = {}},
        {weaponName = 'weapon_nightstick', weaponComponents = {}},
        {weaponName = 'weapon_combatpistol', weaponComponents = {'COMPONENT_AT_PI_FLSH'}},
        {weaponName = 'weapon_carbinerifle_mk2', weaponComponents = {'COMPONENT_AT_AR_FLSH', 'COMPONENT_AT_SIGHTS', 'COMPONENT_AT_AR_AFGRIP_02'}},
    },
}