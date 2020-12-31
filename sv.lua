ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)


RegisterServerEvent('topla')
AddEventHandler('topla', function()
local _source = source
local pl = ESX.GetPlayerFromId(_source)
pl.addInventoryItem('WEAPON_SNOWBALL', math.random(1, 3))
end)