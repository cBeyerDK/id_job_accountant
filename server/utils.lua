Utils = Utils or {}

function Utils:GetPlayerMoney(src)
    if _FRAMEWORK == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(src)
        return xPlayer.getAccount('black_money').money
    elseif _FRAMEWORK == 'QBCORE' then
        local ply = QBCore.Functions.GetPlayer(src)
        return ply.Functions.GetMoney('cash')
    else
        --[[
            Skal return spillerens sorte penge
        ]]
        Core.Utils:Print('nil-func', 'Utils:GetPlayerMoney')
    end
end

function Utils:RemovePlayerMoney(src, amount)
    if _FRAMEWORK == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(src)
        xPlayer.removeAccountMoney('black_money', amount)
    elseif _FRAMEWORK == 'QBCORE' then
        local ply = QBCore.Functions.GetPlayer(src)
        ply.Functions.RemoveMoney('cash', amount)
    else
        --[[
            Skal fjerne sorte penge fra spilleren
        ]]
        Core.Utils:Print('nil-func', 'Utils:RemovePlayerMoney')
    end
end

function Utils:AddPlayerMoney(src, amount)
    if _FRAMEWORK == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(src)
        xPlayer.addMoney(amount)
    elseif _FRAMEWORK == 'QBCORE' then
        local ply = QBCore.Functions.GetPlayer(src)
        ply.Functions.AddMoney('cash', amount)
    else
        --[[
            Skal tilføje penge til spilleren
        ]]
        Core.Utils:Print('nil-func', 'Utils:AddPlayerMoney')
    end
end