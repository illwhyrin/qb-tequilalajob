-- qb-target

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("tequilalaDuty", vector3(-564.37, 278.34, 83.14), 1, 1.2, {
        name = "tequilalaDuty",
        heading = 32,
        debugPoly = false,
        minZ=83.0,
        maxZ=84.0,
    }, {
        options = {
            {  
                event = "qb-tequilalajob:Duty",
                icon = "far fa-clipboard",
                label = "Clock On/Off",
                job = "tequilala",
            },
        },
        distance = 1.5
    })

	exports['qb-target']:AddBoxZone("tequilala_tray_1", vector3(-561.03, 286.61, 81.93), 1.05, 1.0, {
        name = "tequilala_tray_1",
        heading = 35.0,
        debugPoly = false,
        minZ=81.0,
        maxZ=83.3,
    }, {
        options = {
            {
                event = "qb-tequilalajob:Tray1",
                icon = "far fa-clipboard",
                label = "Pick Up Order",
            },
        },
        distance = 1.5
    })

	exports['qb-target']:AddBoxZone("tequilalapump", vector3(-561.1, 288.11, 82.18), 1.05, 0.7, {
        name ="tequilalapump",
        heading = 10,
        debugPoly = false,
        minZ=82.0,
        maxZ=82.8,
    }, {
        options = {
            {
                event = "nh-context:tequilalaBeerMenu",
                icon = "fas fa-filter",
                label = "Pour a Pint",
                job = "tequilala",
            },
        },
        distance = 1.5
    })

	exports['qb-target']:AddBoxZone("tequilalamixer", vector3(-562.94, 285.7, 82.18), 1.05, 0.5, {
		name ="tequilalamixer",
		heading = 10,
		debugPoly = false,
		minZ=82.0,
        maxZ=82.8,
	}, {
	    options = {
			{
    		    event = "nh-context:tequilalaMixerMenu",
    		    icon = "fas fa-box",
    		    label = "Make Cocktails",
    		    job = "tequilala",
			},
	    },
	    distance = 2.5
	})

    exports['qb-target']:AddBoxZone("tequilalafridge", vector3(-562.79, 289.55, 82.23), 1.05, 1.0, {
        name ="tequilalafridge",
        heading = 25,
        debugPoly = false,
        minZ=82.0,
        maxZ=82.8,
    }, {
        options = {
            {
                event = "nh-context:tequilalaMenu",
                icon = "fas fa-laptop",
                label = "Buy Items Or Check Storage!",
                job = "tequilala",
            },
        },
        distance = 2.5
    })

    -- Uncomment if you want to include a storage (not tested / needs minZ and MaxZ changing probably)

    --[[exports['qb-target']:AddBoxZone("tequilalastorage", vector3(-575.77, 286.25, 79.18), 1.05, 0.5, {
        name ="tequilalastorage",
        heading = 10,
        debugPoly = false,
        minZ=78.2,
        maxZ=79.5,
    }, {
        options = {
            {
                event = "qb-tequilalajob:Storage",
                icon = "fas fa-box",
                label = "Storage",
                job = "tequilala",
            },
        },
        distance = 1.5
    })]]

    exports['qb-target']:AddBoxZone("tequilala_register_1", vector3(-563.16, 287.5, 82.18), 0.5, 0.4, {
        name ="tequilala_register_1",
        heading = 125,
        debugPoly = false,
        minZ=82.0,
        maxZ=82.8,
    }, {
        options = {
            {
                event = "qb-tequilalajob:bill",
                parms = "1",
                icon = "fas fa-credit-card",
                label = "Charge Customer",
                job = "tequilala",
            },
        },
        distance = 1.5
    })

    -- Cloakroom / Entrance Fee
    exports['qb-target']:AddBoxZone("tequilala_register_2", vector3(-563.37, 278.79, 82.91), 0.5, 0.4, {
        name ="tequilala_register_2",
        heading = 125,
        debugPoly = false,
        minZ=82.6,
        maxZ=83.4,
    }, {
        options = {
            {
                event = "qb-tequilalajob:bill",
                parms = "1",
                icon = "fas fa-credit-card",
                label = "Charge Customer",
                job = "tequilala",
            },
        },
        distance = 1.5
    })

-- Uncomment if you have a MLO/MAP that includes the upstairs bar

    --[[exports['qb-target']:AddBoxZone("tequilala_tray_2", vector3(-564.32, 285.46, 85.33), 1.05, 0.5, {
        name = "tequilala_tray_2",
        heading = 25,
        debugPoly = false,
        minZ=83.0,
        maxZ=86.0,
    }, {
        options = {
            {
                event = "qb-tequilalajob:Tray2",
                icon = "far fa-clipboard",
                label = "Pick Up Order",
            },
        },
        distance = 2.5
    })

    exports['qb-target']:AddBoxZone("tequilalapump2", vector3(-564.05, 286.28, 85.37), 1.05, 0.5, { 
        name ="tequilalapump2",
        heading = 34,
        debugPoly = false,
        minZ=85.0,
        maxZ=86.0,
    }, {
        options = {
            {
                event = "nh-context:tequilalaBeerMenu",
                icon = "fas fa-filter",
                label = "Pour a Pint",
                job = "tequilala",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("tequilalamixer2", vector3(-566.04, 286.01, 85.33), 1.05, 0.5, {
        name ="tequilalamixer2",
        heading = 10,
        debugPoly = false,
        minZ=85.0,
        maxZ=86.0,
    }, {
        options = {
            {
                event = "nh-context:tequilalaMixerMenu",
                icon = "fas fa-box",
                label = "Make Cocktails",
                job = "tequilala",
            },
        },
        distance = 2.5
    })

    exports['qb-target']:AddBoxZone("tequilala_register_3", vector3(-566.39, 284.74, 85.35), 0.5, 0.4, {
        name ="tequilala_register_3",
        heading = 125,
        debugPoly = false,
        minZ=84.0,
        maxZ=86.0,
    }, {
        options = {
            {
                event = "qb-tequilalajob:bill",
                parms = "1",
                icon = "fas fa-credit-card",
                label = "Charge Customer",
                job = "tequilala",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("tequilalafridge2", vector3(-566.12, 287.48, 85.36), 1.05, 1.0, {
        name ="tequilalafridge2",
        heading = 25,
        debugPoly = false,
        minZ=85.0,
        maxZ=86.0,
    }, {
        options = {
            {
                event = "nh-context:tequilalaMenu",
                icon = "fas fa-laptop",
                label = "Buy Items Or Check Storage!",
                job = "tequilala",
            },
        },
        distance = 2.5
    })]]

end)


-- NH - Context --

RegisterNetEvent('nh-context:tequilalaMenu', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Fridge |",
            txt = "",
        },
        {
            id = 1,
            header = "• Order Items",
            txt = "Buy items from the shop!",
            params = {
                event = "qb-tequilalajob:shop"
            }
        },
        {
            id = 2,
            header = "• Open Fridge",
            txt = "See what you have in storage",
            params = {
                event = "qb-tequilalajob:Storage2"
            }
        },
        {
            id = 3,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)

RegisterNetEvent('nh-context:tequilalaBeerMenu', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Beer Menu |",
            txt = "",
        },
        {
            id = 1,
            header = "• A.M. Beer",
            txt = "Pint Glass",
            params = {
                event = "qb-tequilalajob:am-beer"
            }
        },
        {
            id = 2,
            header = "• Logger Beer",
            txt = "Pint Glass",
            params = {
                event = "qb-tequilalajob:logger-beer"
            }
        },
        {
            id = 3,
            header = "• Stronzo Beer",
            txt = "Pint Glass",
            params = {
                event = "qb-tequilalajob:stronzo-beer"
            }
        },
        {
            id = 4,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)

RegisterNetEvent('nh-context:tequilalaMixerMenu', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Mixer Menu |",
            txt = "",
        },
        {
            id = 1,
            header = "• Hulk Cocktail",
            txt = "Small Glass",
            params = {
                event = "qb-tequilalajob:hulkcocktail"
            }
        },
        {
            id = 2,
            header = "• Milk Dragon",
            txt = "Small Glass",
            params = {
                event = "qb-tequilalajob:milkdragon"
            }
        },
        {
            id = 3,
            header = "• Marvel Cocktail",
            txt = "Cocktail Glass",
            params = {
                event = "qb-tequilalajob:marvelcocktail"
            }
        },
        {
            id = 4,
            header = "• Yoshi Shooter",
            txt = "Cocktail Glass",
            params = {
                event = "qb-tequilalajob:yoshishooter"
            }
        },
        {
            id = 5,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)


-- Register Stuff --
RegisterNetEvent("qb-tequilalajob:bill")
AddEventHandler("qb-tequilalajob:bill", function()
    local bill = exports["nh-keyboard"]:KeyboardInput({
        header = "Create Receipt",
        rows = {
            {
                id = 0,
                txt = "PayPal Number"
            },
            {
                id = 1,
                txt = "Amount"
            }
        }
    })
    if bill ~= nil then
        if bill[1].input == nil or bill[2].input == nil then 
            return 
        end
        TriggerServerEvent("qb-tequilalajob:bill:player", bill[1].input, bill[2].input)
    end
end)