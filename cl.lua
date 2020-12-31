RegisterCommand('kartopla', function()
    local ped = PlayerPedId()
    if not IsPedInAnyVehicle(ped, true) then
        TriggerEvent('mythic_progbar:client:progress', {
            name = 'kartopla',
            duration = 1000,
            label = 'Kar Toplanıyor..',
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                animDict = "anim@mp_snowball",
                anim = "pickup_snowball",
            },
        }, function(status)
            if not status then
                TriggerServerEvent('topla', source)
            end
        end)
    else
        exports['mythic_notify']:SendAlert('error', 'Araç içinde kar toplayamazsın')
    end
end)

-- ^adişş 🔥#5555 ve ortak Lunny#7190