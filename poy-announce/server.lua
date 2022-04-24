QBCore = exports['qb-core']:GetCoreObject()


Citizen.CreateThread(function()
    print('serversideloaded')

end)

QBCore.Functions.CreateCallback('poy-announce:getrank', function(source, cb)
    local src = source
    if QBCore.Functions.HasPermission(src, 'god') or IsPlayerAceAllowed(src, 'command') then
        cb(true)
    else
        cb(false)
    end
end)


RegisterServerEvent('poy-announce:sendduyuru', function(text, time)
    print('triggered')
    TriggerClientEvent('poy-announce:shownui', -1, text, time)

end)