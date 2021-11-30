# qb-Tequilalajob
Enables Patoche's Tequilala to have employee's.

## Dependencies  ##
[QBCore](https://github.com/qbcore-framework/qb-core)

[nh-context](https://github.com/nerohiro/nh-context)

## Optional ##
[qb-target](https://github.com/BerkieBb/qb-target)

If not using qb-target 
 - Rename menus.lua to menus-target.lua
 - Rename menus-notarget.lua to menus.lua
 - Uncomment the Config.Locations in config.lua

## Optional Map ##
Hassaric has 3 different states of Tequilala, Construction, nomusic and with music, his map also allows use of the upstairs bar.
[Hassaric](https://hassarics-maps.tebex.io/) - [Tequilala](https://forum.cfx.re/t/mlo-all-hassaric-s-maps-for-free/4776406)

## Credit ##
Credit all goes to these people as if it wasn't for them I wouldn't have been able to get this script to work.

Original Creator [DrBlackBeard095](https://github.com/DrBlackBeard095) of [qb-burgershot](https://github.com/DrBlackBeard095/Qb-Burgershot)

Forked from [lilphantom25](https://github.com/lilphantom25) [qb-cyberbarjob](https://github.com/lilphantom25/qb-cyberbarjob)

## Key Features ##
 - For qb-target or non qb-target servers
 - Options for the bar upstairs
 - Employees for the Tequilala
 - Pouring of Drinks
 - Mixing of drinks
 - Fridge for drinks
 - Billing system

## To Setup ##

qb-core/shared.lua
```
        -- Tequilala Drinks
    ["am-beer"]                      = {["name"] = "am-beer",                       ["label"] = "A.M. Beer",                ["weight"] = 250,       ["type"] = "item",      ["image"] = "am-beer.png",              ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Morning Golden Shower"}, 
    ["dusche-beer"]                  = {["name"] = "dusche-beer",                   ["label"] = "Dusche Beer",              ["weight"] = 250,       ["type"] = "item",      ["image"] = "dusche-beer.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Dusche Bee"}, 
    ["logger-beer"]                  = {["name"] = "logger-beer",                   ["label"] = "Logger Beer",              ["weight"] = 250,       ["type"] = "item",      ["image"] = "logger-beer.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Logger Beer"}, 
    ["stronzo-beer"]                 = {["name"] = "stronzo-beer",                  ["label"] = "Stronzo Beer",             ["weight"] = 250,       ["type"] = "item",      ["image"] = "stronzo-beer.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Stronzo Beer"},
    ["sunny-cocktail"]               = {["name"] = "sunny-cocktail",                ["label"] = "SUnny cocktail",           ["weight"] = 250,       ["type"] = "item",      ["image"] = "sunny-cocktail.png",       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sunny cocktail"},  

    -- Tequilala Food
    ["crisps"]                       = {["name"] = "crisps",                        ["label"] = "Chips",                    ["weight"] = 250,       ["type"] = "item",      ["image"] = "crisps.png",               ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Hmmm nice."},

    -- Tequilala Ingrediants
    ["pintglass"]                    = {["name"] = "pintglass",                     ["label"] = "Pint Glass",               ["weight"] = 500,       ["type"] = "item",      ["image"] = "pintglass.png",            ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A glass for beer"},
    ["smallglass"]                   = {["name"] = "smallglass",                    ["label"] = "Small Glass",              ["weight"] = 500,       ["type"] = "item",      ["image"] = "smallglass.png",           ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A small glass"},
    ["wineglass"]                    = {["name"] = "wineglass",                     ["label"] = "Wine Glass",               ["weight"] = 500,       ["type"] = "item",      ["image"] = "wineglass.png",            ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A glass for wine"},
    ["cocktailglass"]                = {["name"] = "cocktailglass",                 ["label"] = "Cocktail Glass",           ["weight"] = 500,       ["type"] = "item",      ["image"] = "cocktailglass.png",        ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A glass for cock... tails"},

```
```
["tequilala"] = {
        label = "Tequi-la-la",
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = "DJ",
                payment = 50
            },
            ['1'] = {
                name = "Bartender",
                payment = 75
            },
            ['2'] = {
                name = "Bouncer",
                payment = 100
            },
            ['3'] = {
                name = "Manager",
                payment = 125
            },
            ['4'] = {
                name = "Owner",
                isboss = true,
                payment = 150
            },
        },
    },

``` 

qb-bossmenu/config.lua

```
['tequilala'] = vector3(-568.577, 291.09, 79.18)
```

qb-smallresources/config.lua  -- Regen Amounts for hunger and thirst
```
    -- Tequilala Drinks
    ["dusche-beer"] = math.random(5, 15),
    ["stronzo-beer"] = math.random(5, 15),
    ["am-beer"] = math.random(5, 15),
    ["logger-beer"] = math.random(5, 15),
    ["sunny-cocktail"] = math.random(5, 15),

    -- Tequilala Food
    ["crisps"] = math.random(10, 20),
```

qb-smallresources/client/consumables.lua  - Shouldn't need if added with another resource
```
-- Tequilala
-- Drinking a Cocktail

RegisterNetEvent("consumables:client:DrinkCock")
AddEventHandler("consumables:client:DrinkCock", function(itemName)
    Citizen.Wait(1500)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar("snort_coke", "Drinking cocktail..", math.random(3000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + Consumeables[itemName])
        alcoholCount = alcoholCount + 2
        if alcoholCount > 1 and alcoholCount < 4 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 600)
        elseif alcoholCount >= 4 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 600)
            Effectdrunk()
            -- print("This should start the drunk effect")
        end
        
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

-- Tequilala
-- Drinking a Beer

RegisterNetEvent("consumables:client:DrinkBeer")
AddEventHandler("consumables:client:DrinkBeer", function(itemName)
    Citizen.Wait(1500)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    local playerPed = PlayerPedId()
    local prop_name = 'prop_beer_pissh'
    local x,y,z = table.unpack(GetEntityCoords(playerPed))
    local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
    local boneIndex = GetPedBoneIndex(playerPed, 18905)

    if not action then
        AttachEntityToEntity(prop, playerPed, boneIndex, 0.02, -0.20, 0.10, 240.0, -60.0, 0.0, true, true, false, true, 1, true)
    else
        DeleteObject(prop)
    end

    action = true
    QBCore.Functions.Progressbar("drink_something", "Drinking Beer...", 3500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        DeleteObject(prop)    
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + Consumeables[itemName])
        action = false
        alcoholCount = alcoholCount + 2
        if alcoholCount > 1 and alcoholCount < 4 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 600)
        elseif alcoholCount >= 4 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 600)
            Effectdrunk()
        end
    end)

end)
```

qb-smallresources/server/consumables.lua
```
-- Tequilala Drinks
QBCore.Functions.CreateUseableItem("dusche-beer", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkCock", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("stronzo-beer", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkCock", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("am-beer", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkBeer", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("logger-beer", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkBeer", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("sunny-cocktail", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkBeer", source, item.name)
    end
end)

-- Tequilala Food
QBCore.Functions.CreateUseableItem("crisps", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)
```

## Please enjoy and have FUN!! ##


----------------------------------------
# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>

License is the same due to it being MADE FOR QBCore