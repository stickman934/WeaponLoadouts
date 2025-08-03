menus = Config.Loadouts

-- Creating menu pool for NativeUI
_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("Loadouts", Config.Description)
_menuPool:Add(mainMenu)

-- Creating the main menu
function WeaponMenu(menu)
    local loadoutMenu = _menuPool:AddSubMenu(menu, 'Loadout Options', '', true)
    for Name, Category in pairs(menus) do
        local catagory = NativeUI.CreateItem(Name, '')
        loadoutMenu:AddItem(catagory)
        
        -- Function to give weapons and components
        catagory.Activated = function ()
            for i, weapon in ipairs(Category) do
                GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(weapon.weaponName), 999, false, false)
                for j = 0, #weapon.weaponComponents do
                    GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(weapon.weaponName), GetHashKey(weapon.weaponComponents[j]))
                end
            end  
            ShowNotification('~g~Loadout spawned!')
        end
    end

    -- Option to remove all weapons
    local removeAllWeapons = NativeUI.CreateItem('~r~Remove all weapons', '')
    loadoutMenu:AddItem(removeAllWeapons)

    removeAllWeapons.Activated = function ()
        RemoveAllPedWeapons(PlayerPedId())
        ShowNotification('~r~All weapons removed!')
    end
end

WeaponMenu(mainMenu)

_menuPool:RefreshIndex()

-- Disable spin camera when you open the menu
_menuPool:MouseControlsEnabled (false)
_menuPool:MouseEdgeEnabled (false)
_menuPool:ControlDisablingEnabled(false)

-- Registering command and keybind for the menu
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
  
    end
end) 
  
RegisterCommand(Config.Command, function ()
    _menuPool:ProcessMenus()
    Citizen.Wait(1)
    mainMenu:Visible(not mainMenu:Visible())
end) 
RegisterKeyMapping(Config.Command, 'Weapons loadout menu', 'keyboard', Config.Keybind)
TriggerEvent('chat:addSuggestion', Config.Command, 'Open weapons loadout menu')

-- Fubnction to show notifications
function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end