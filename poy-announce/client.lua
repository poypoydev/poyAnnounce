local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('poy-announce:shownui', function(text,time)
    if text ~= nil then
        print(time)
        if time == 0 then
            newtime = 20000
        elseif time ~= 0 then
            newtime = time * 1000
        end
        print(newtime)
        SendNUIMessage({
            type = 'announce', 
            text = text,
            time = newtime,
        })
    end
end)

RegisterCommand('duyur', function(time, text)
    local argString = table.concat(text, " ")
    if argString ~= nil then
        QBCore.Functions.TriggerCallback('poy-announce:getrank', function(sdos)
            print(sdos)
            if sdos then
                print('shouldshend')
                TriggerServerEvent('poy-announce:sendduyuru', argString, time)
            else
                QBCore.Functions.Notify('Bunu Yapamazsın!', 'error')
            end
        end)
    end
end)