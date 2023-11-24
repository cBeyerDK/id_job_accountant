local AC = exports['id_core']:getACUtils()
local playerLoadEvent = 'id_core:playerLoaded'
if Core.Settings.Framework.Name == 'ESX' then playerLoadEvent = 'esx:playerLoaded' end
--[[
    if eventCode ~= serverEventCode then
        AC:PermBan(src, nil, 'TriggerServerEvent', GetCurrentResourceName())
        return
    end
]]

RegisterNetEvent('id_job_revisor:logs:startWash', function(amount, procent, time, eventCode)
    local src = source
    
    if eventCode ~= serverEventCode then
        AC:PermBan(src, nil, 'TriggerServerEvent', GetCurrentResourceName())
        return
    end

    Core.Logs:SendLog(GetCurrentResourceName()..'::startwash', _('logs::startwash', GetPlayerName(src), Core.Utils.Math:GroupDigits(amount), math.floor(procent * 100), time), src)
end)

RegisterNetEvent('id_job_revisor:hvidvask:giveWashedMoney', function(amount, procent, eventCode)
    local src = source
    
    if eventCode ~= serverEventCode then
        AC:PermBan(src, nil, 'TriggerServerEvent', GetCurrentResourceName())
        return
    end

    newAmount = amount * procent
    local companyAmount = newAmount * (Config.Hvidvask.Take / 100)
    newAmount = amount - newAmount
    amount = math.floor(amount)
    newAmount = math.floor(newAmount)
    companyAmount = math.floor(companyAmount)
    Utils:RemovePlayerMoney(src, amount)
    if _FRAMEWORK == 'ESX' and Config.Job.Society.Enable then
        TriggerEvent('esx_addonaccount:getSharedAccount', Config.Job.Society.Name, function(account)
            account.addMoney(companyAmount)
        end)
    elseif _FRAMEWORK == 'QBCORE' and Config.Job.Society.Enable then
        exports['qb-management']:AddMoney(Config.Job.Name, companyAmount)
    end
    Utils:AddPlayerMoney(src, newAmount)
    TriggerClientEvent('id_notify:notify', src, {
        title = 'Hvidvaskning',
        message = _U('washing_ended', Core.Utils.Math:GroupDigits(newAmount), Core.Utils.Math:GroupDigits(amount), Core.Utils.Math:GroupDigits(companyAmount)),
        type = 'success'
    })
    Core.Logs:SendLog(GetCurrentResourceName()..'::endwash', _('logs::endwash', GetPlayerName(src), Core.Utils.Math:GroupDigits(amount), math.floor(procent * 100)), src)
end)