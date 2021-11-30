local QBCore = exports['qb-core']:GetCoreObject()
-- Drawtext -
function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end


Citizen.CreateThread(function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    while true do
        local sleep = 100
        if isLoggedIn then
            local pos = GetEntityCoords(PlayerPedId())
            if PlayerData.job.name == "tequilala" then
                for k, v in pairs(Config.Locations["duty"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 5 then
                        if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                            if onDuty then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ - Get off duty")
                            else
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~r~E~w~ - Get on duty")
                            end
                            if IsControlJustReleased(0, 38) then
                                onDuty = not onDuty
                                TriggerServerEvent("QBCore:ToggleDuty")
                            end
                        elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                            sleep = 5
                            DrawText3D(v.x, v.y, v.z, "on/off duty")
                        end
                    end
                end

                for k, v in pairs(Config.Locations["pumps"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Pour Beer")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("nh-context:BeerMenu")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Pour Beer")
                            end  
                        end
                    end
                end

                for k, v in pairs(Config.Locations["mixer"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Mix Drinks")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("nh-context:MixerMenu")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Mix Drinks")
                            end  
                        end
                    end
                end

                for k, v in pairs(Config.Locations["fridge"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Open Fridge")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("nh-context:tequilalaMenu")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Open Fridge")
                            end  
                        end
                    end
                end

                -- Uncomment if you want to include a storage
                
                --[[for k, v in pairs(Config.Locations["storage"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Open Storage")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("qb-tequilalajob:Storage")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Open Storage")
                            end  
                        end
                    end
                end]]

                for k, v in pairs(Config.Locations["cashregister"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Cash Register")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("qb-tequilalajob:bill")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Cash Register")
                            end  
                        end
                    end
                end
            else
                Citizen.Wait(2000)
            end
            
            for k, v in pairs(Config.Locations["tray1"]) do
                if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                            sleep = 5
                            DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Tray")
                            if IsControlJustReleased(0, 38) then
                                TriggerEvent("qb-tequilalajob:Tray1")
                            end
                        elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                            sleep = 5
                            DrawText3D(v.x, v.y, v.z, "Tray")
                        end  
                end
            end

            -- Uncomment if you have a MLO/MAP that includes the upstairs bar

            for k, v in pairs(Config.Locations["tray2"]) do
                if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                            sleep = 5
                            DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Tray")
                            if IsControlJustReleased(0, 38) then
                                TriggerEvent("qb-tequilalajob:Tray2")
                            end
                        elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                            sleep = 5
                            DrawText3D(v.x, v.y, v.z, "Tray")
                        end  
                end
            end
        end
        Citizen.Wait(sleep)
    end
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