RegisterNetEvent('syncpos:clientspawn')
AddEventHandler('syncpos:spawn', function(x, y, z)
    SetEntityCoords(GetPlayerPed(-1), x, y, z, 1, 0, 0, 1)
end)

RegisterNetEvent('playerSpawned')
AddEventHandler('playerSpawned', function()
    TriggerServerEvent('syncpos:spawn')
end)
