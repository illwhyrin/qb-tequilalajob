local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = true
PlayerJob = {}

local onDuty = false

function DrawText3Ds(x, y, z, text)
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


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "tequilala" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

--[[Citizen.CreateThread(function() -- Commented out by McKlean
    tequilala = AddBlipForCoord(-1197.32, -897.655, 13.995)
    SetBlipSprite (tequilala, 106)
    SetBlipDisplay(tequilala, 4)
    SetBlipScale  (tequilala, 0.5)
    SetBlipAsShortRange(tequilala, true)
    SetBlipColour(tequilala, 75)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("tequilala")
    EndTextCommandSetBlipName(tequilala)
end)]]

RegisterNetEvent("qb-tequilalajob:Duty")
AddEventHandler("qb-tequilalajob:Duty", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("qb-tequilalajob:Tray1")
AddEventHandler("qb-tequilalajob:Tray1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "pickuptequilala1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pickuptequilala1", {
        maxweight = 20000,
        slots = 5,
    })
end)

RegisterNetEvent("qb-tequilalajob:Tray2")
AddEventHandler("qb-tequilalajob:Tray2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "pickuptequilala2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pickuptequilala2", {
        maxweight = 20000,
        slots = 5,
    })
end)

RegisterNetEvent("qb-tequilalajob:Storage")
AddEventHandler("qb-tequilalajob:Storage", function()
    TriggerEvent("inventory:client:SetCurrentStash", "tequilalastash")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "tequilalastash", {
        maxweight = 750000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-tequilalajob:Storage2")
AddEventHandler("qb-tequilalajob:Storage2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "tequilalafridge")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "tequilalafridge", {
        maxweight = 750000,
        slots = 40,
    })
end)

-- Drink Creations
RegisterNetEvent("qb-tequilalajob:am-beer")
AddEventHandler("qb-tequilalajob:am-beer", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeAM()
        else
            QBCore.Functions.Notify("You don't have a Pint Glass..", "error")
        end
      end, 'pintglass')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-tequilalajob:logger-beer")
AddEventHandler("qb-tequilalajob:logger-beer", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeLoggerr()
        else
            QBCore.Functions.Notify("You don't have a Pint Glass..", "error")
        end
      end, 'pintglass')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-tequilalajob:stronzo-beer")
AddEventHandler("qb-tequilalajob:stronzo-beer", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeStronzo()
        else
            QBCore.Functions.Notify("You don't have a Pint Glass..", "error")
        end
      end, 'pintglass')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-tequilalajob:dusche-beer")
AddEventHandler("qb-tequilalajob:dusche-beer", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeDusche()
        else
            QBCore.Functions.Notify("You don't have a Pint Glass..", "error")
        end
      end, 'pintglass')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-tequilalajob:sunny-cocktail")
AddEventHandler("qb-tequilalajob:sunny-cocktail", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeSunny()
        else
            QBCore.Functions.Notify("You don't have a Cocktail Glass..", "error")
        end
      end, 'cocktailglass')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

-- Functions --
function MakeAM()
    TriggerServerEvent('QBCore:Server:RemoveItem', "pintglass", 1)
    QBCore.Functions.Progressbar("pickup", "Pouring Pint...", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    },{
        animDict = "amb@world_human_drinking_fat@coffee@female@base",
        anim = "base",
        flags = 8,
    }, {
        model = "prop_pint_glass_tall",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    } 
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "am-beer", 1)
    --TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["am-beer"], "add")
    QBCore.Functions.Notify("You poured a pint", "success")
end  


function MakeLogger()
    TriggerServerEvent('QBCore:Server:RemoveItem', "pintglass", 1)
    QBCore.Functions.Progressbar("pickup", "Pouring Pint...", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    },{
        animDict = "amb@world_human_drinking_fat@coffee@female@base",
        anim = "base",
        flags = 8,
    }, {
        model = "prop_pint_glass_tall",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    } 
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "logger-beer", 1)
    --TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["logger-beer"], "add")
    QBCore.Functions.Notify("You poured a pint", "success")
end

function MakeStronzo()
    TriggerServerEvent('QBCore:Server:RemoveItem', "pintglass", 1)
    QBCore.Functions.Progressbar("pickup", "Mixing Cocktail...", 8000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    },{
        animDict = "amb@world_human_drinking_fat@coffee@female@base",
        anim = "base",
        flags = 8,
    }, {
        model = "prop_pint_glass_tall",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    } 
)
    Citizen.Wait(6000)
    TriggerServerEvent('QBCore:Server:AddItem', "stronzo-beer", 1)
    --TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["stronzo-beer"], "add")
    QBCore.Functions.Notify("You made a cocktail", "success")
end

function MakeDusche()
    TriggerServerEvent('QBCore:Server:RemoveItem', "pintglass", 1)
    QBCore.Functions.Progressbar("pickup", "Mixing Cocktail...", 8000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    },{
        animDict = "amb@world_human_drinking_fat@coffee@female@base",
        anim = "base",
        flags = 8,
    }, {
        model = "prop_pint_glass_tall",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    } 
)
    Citizen.Wait(6000)
    TriggerServerEvent('QBCore:Server:AddItem', "dusche-beer", 1)
    --TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["dusche-beer"], "add")
    QBCore.Functions.Notify("You made a cocktail", "success")
end

function MakeSunny()
    TriggerServerEvent('QBCore:Server:RemoveItem', "cocktailglass", 1)
    QBCore.Functions.Progressbar("pickup", "Mixing Cocktail...", 8000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    },{
        animDict = "anim@amb@clubhouse@bar@drink@one",
        anim = "one_bartender",
        flags = 8,
    }, {
        model = "prop_shot_glass",
        bone = 60309,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    }, {
        model = "prop_cs_whiskey_bottle",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    } 
)
    Citizen.Wait(6000)
    TriggerServerEvent('QBCore:Server:AddItem', "sunny-cocktail", 1)
    --TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sunny-cocktail"], "add")
    QBCore.Functions.Notify("You made a cocktail", "success")
end


-- Shop --   
RegisterNetEvent("qb-tequilalajob:shop")
AddEventHandler("qb-tequilalajob:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "tequilala", Config.Items)
end)
