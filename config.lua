Config = {}

Config.SQL = 'oxmysql' --- oxmysql or ghmattisql

--if u are not using qb-target uncomment this. (locatons may need adjusting)

--[[Config.Locations = {
    ["duty"] = {
        [1] = vector4(-565.24, 278.28, 83.14, 340.83),
    },    
    ["tray1"] = {
        [1] = vector4(-561.8, 286.03, 82.18, 270.19),
    },
    --["tray2"] = {
    --    [1] = vector4(-564.75, 284.7, 85.38, 287.12), -- Uncomment if you have a MLO/MAP that includes the upstairs bar
    --},
    ["pumps"] = {
        [1] = vector4(-561.71, 288.08, 82.18, 276.72),
        --[2] = vector4(-564.91, 286.49, 85.38, 247.19), -- Uncomment if you have a MLO/MAP that includes the upstairs bar
    },
    ["mixer"] = {
        [1] = vector4(-562.44, 285.1, 82.18, 102.61),
        --[2] = vector4(-565.51, 286.13, 85.38, 75.33), -- Uncomment if you have a MLO/MAP that includes the upstairs bar
    },    
    ["fridge"] = {
        [1] = vector4(-562.04, 289.75, 82.18, 61.28),
        --[2] = vector4(-565.38, 287.71, 85.38, 68.01), -- Uncomment if you have a MLO/MAP that includes the upstairs bar
    },      
    ["storage"] = { -- if not using the storage comment this out (uncomment in menu.lua if using)
        [1] = vector4(-575.85, 286.26, 79.18, 175.38),
    },
    ["cashregister"] = {
        [1] = vector4(-562.36, 287.42, 82.18, 78.06),
        [2] = vector4(-563.39, 279.29, 82.98, 207.14), -- Cloak room
        --[3] = vector4(-565.63, 284.7, 85.38, 98.95), -- Uncomment if you have a MLO/MAP that includes the upstairs bar
    }, 
}]]


Config.Items = {
label = "Shop",
    slots = 7,
    items = {
        [1] = {
            name = "pintglass",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "smallglass",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "wineglass",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "cocktailglass",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "crisps",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
    }
}
