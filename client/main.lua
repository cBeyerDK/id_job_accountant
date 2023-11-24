serverEventCode = '3a3Hc5hvBHU$fqsS$m8XW=v4m#--6P2kCGpnPvrPKAnZkmC6CGSsXJmPZEmbTS37GQKLmz6Fm_V^LT3&#BdDvzdbj_vg*9VBUJ-G=afVLkKybB^-nWKe*H?!J!$4D--PW?tS^&529@uFsM_Z+aQ%=tr6aBav4pHz2vmKF&Y#JQ$PPM4sc7ku?QL=hg^T?_WkU?2-%#6Dh?5Y2__?SAgMX#3ktnR!8JaMXV76f2U-Ukz8@_k!u-X3xzBD!T6jD36_&&Agu@+gA$gsTL84!SVVdyEpQtWfKYkR_f&%@uUSPqnc2n5cuDB%MYhzzayVxbb*hxM&H8!!m_Q!wNVqS9Q9am*qg*&!B3Q=QmQQ5Chnw72A3+B@HeMEqA4+33a?Y4KXQ$-rk=Mtecgm^z9&C$uMw+*vmVD3P-jM7-2q$^nMBMcb+ab_Mvn?_m#X-6jnsfxn9%yDtC$T_TyR_t**2U4Dct+hxH#z_T5mR6a3_M*3$#S8Yvg*!Ph8g64w4pzFDk65P5Cu#HmTzLrKYw^97+4ykv4ZrKZ6%r^k677KU@*g^q7-M@HVTZbcv$+NdyRF5C7HR3pztY%-77ukQ$p?FEg%aQT*zbfR!qR5$9WEEGmFLmTb8^MdgPX7npf=kvTCTn=YMm4HNGNE3Vx2Dvz+gb_uhjxvwJs@@Ew8V2sb^BFc*+EVd8A5+5Kx7jJ5RNqQJmSCWvT^PkeF55rEqsus?*dyC=XMRQ&FdWmk_zK*FQHbmY7ex_SGT@7Qyv4$uXA+@BvRHt5tGNt6cmy&tYB^!Z526*=ZP=+m532PbcQZ79h5h^fVjEgjPHJHME?8J6$NpjbdqU!xf%2BS3e9tdBr29-kQy@U_km5%N6LAzwZ&Lt%j^bd75zS62Vg6MBbE^3k&bCUD?p%tS!nhG+5XpDAtbDBEF-^x49#NGau_&!J7qdKFjzS4^HbZ4APYr$+MgN?8NCVmEcb5FBj3cbj=aBRjkGaY=qz6Bb#vHSPbLXBk6knn?8w$J-a?Bc-X8zz$+LCkaJUWyxG+?DBL*8n2_aN6Z%XJ&TNNt!5rRwBW!gyux=$UNZTdH@GCqKy2zT^*zjQtrHPZ?EYheHPs5FkU+AbnBWMRg9sE=bXwFXwNd&=_Ncb$csZhd!vewUg%kUUfEBCRd#jVzkm9UhvLn@&^w=_M9SXnx-Z*XXkHkp!GLPg^4rDQqWv-3SZeu*3!dpmrk-SJ+4dh!HveEyw_9ZNsrpuF*5#aQfuaYp2aDxr?*&Q&^+WgUH@%pmY6&s_Yj%RGg!L^4^ewJxmp$ph-*p=Y6s8RrW6CsMy^zEeMnp$rU2Y-mCFGEpB&*L*9_4_=N&zma@GF?bqN$-X*KdyFfnsu!*_3^2^Nbe3&rswzedm5%kBdfKpjAgsxr$C^pDp4S?yt6+N-Z!*#^39bpktAx$_Zu!Xd5&wW=WumPw3VQ!WBLC_=526AfPeJunZUgzxbLEnf9B5g$rRAqbhCj_35Es!_5A%^XTNt8qp6sMZkkvX74=J-?4h#L*6JDU!wM*dJdNDWr$xR*+qP%wvw2tnVMEmhW^VcAWL$FZupfn!WjY2J5Kxhr^y#Zh$e$9b-bu8GEHjAR%LK*r^rh9CUxHf#MT83Pg6g@RjRbArMbdgAS3F!BQ3Jze4V%G=M9E+Kebf*s!VwHvAV^Tt*Fgr_&&s+8daTauE_cF*qzkc*ddkMn^UBmB@tb!PsjkNDV?-xgP7FwR#jYTYB2uCa!qk*%wg#GXcMV=jCr5hB$GzBH-xp?kh22S%V-?5N94t5Nq^JKkw+@Bktnx6=RgVd+svZ^K8uyj7BJvf*!EXKeHG29?Xjp+8rV5V9-fgXCF5$KfRSbefc9a2x5gCA2r@VCmSSHzkdbw&wJt4h!%X-s9MW9HHCExdh-?DGYjVzU-H$QS-RY9ptE6eRMzKa5xz*3x^V^%9bm@r3RMJ$nqA=D2352CH2YxP7T$J%2s8y-UG*5Ku&NLhX#WHHP!%7FzxnY4*=@9BBGM_S5h_F%Gwf$%rK#k**9mNu6KNzRBvSAa=rEbY@FBAB=9gj3uc9!-v'

--====================
--==    Variables   ==
--====================
isWashing = false
isInMarker, showPromp = nil, true

if Config.Blip.Enable then
    CreateThread(function()
        local blip = AddBlipForCoord(Config.Blip.coords)

        SetBlipSprite (blip, Config.Blip.sprite)
        SetBlipDisplay(blip, Config.Blip.display)
        SetBlipScale  (blip, Config.Blip.scale)
        SetBlipColour (blip, Config.Blip.color)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(_U('map_blip'))
        EndTextCommandSetBlipName(blip)
    end)
end

CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local sleep = 1000

        if Utils:HasPlayerGotJob() then
            sleep = 1

            if _FRAMEWORK == 'ESX' and GetDistanceBetweenCoords(playerCoords, Config.BossMenu, false) <= Config.DrawDistance and ESX.PlayerData.job.grade_name == Config.Job.BossGrade then
                DrawMarker(22, Config.BossMenu,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                1.0, 1.0, 1.0,
                Config.MarkerColor[1], Config.MarkerColor[2], Config.MarkerColor[3], Config.MarkerColor[4],
                false, true, 2, false, nil, nil, false)

                if GetDistanceBetweenCoords(playerCoords, Config.BossMenu, true) <= 1.2 then
                    isInMarker = 'BossMenu'
                    if showPromp then exports['id_helpnotify']:showUI(_U('bossmenu_promp')) end
                    if IsControlJustReleased(0, 51) then
                        showPromp = false
                        exports['id_helpnotify']:hideUI()
                        TriggerEvent('esx_society:openBossMenu', Config.Job.Society.Name:gsub('society_', ''), function(data, menu)
                            menu.close()
                            showPromp = true
                        end)
                    end
                elseif isInMarker == 'BossMenu' then
                    isInMarker = nil
                    showPromp = true
                    ESX.UI.Menu.CloseAll()
                    exports['id_helpnotify']:hideUI()
                end
            end

            if GetDistanceBetweenCoords(playerCoords, Config.Hvidvask.Loc, false) <= Config.DrawDistance then
                DrawMarker(Config.Hvidvask.Marker.type, Config.Hvidvask.Loc,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                Config.Hvidvask.Marker.scale,
                Config.MarkerColor[1], Config.MarkerColor[2], Config.MarkerColor[3], Config.MarkerColor[4],
                Config.Hvidvask.Marker.bobUpAndDown, Config.Hvidvask.Marker.faceCamera, 2, Config.Hvidvask.Marker.rotate, nil, nil, false)

                if GetDistanceBetweenCoords(playerCoords, Config.Hvidvask.Loc, true) <= Config.Hvidvask.Marker.scale.x then
                    isInMarker = 'HvidvaskMenu'
                    if showPromp then exports['id_helpnotify']:showUI(_U('hvidvaskmenu_promp')) end
                    if IsControlJustReleased(0, 51) then
                        showPromp = false
                        exports['id_helpnotify']:hideUI()
                        openHvidvaskMenu()
                    end
                elseif isInMarker == 'HvidvaskMenu' then
                    isInMarker = nil
                    showPromp = true
                    exports['id_helpnotify']:hideUI()
                    if _FRAMEWORK == 'ESX' then ESX.UI.Menu.CloseAll() end
                end
            end
        end

        Wait(sleep)
    end
end)

openHvidvaskMenu = function()
    if _FRAMEWORK == 'ESX' then
        ESX.UI.Menu.CloseAll()

        ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'hvidvask_amount', {
            title = _U('hvidvaskmenu_amount')
        }, function(data, menu)
            if tonumber(data.value) then
                menu.close()
                local amount = tonumber(data.value)
                ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'hvidvask_procent', {
                    title = _U('hvidvaskmenu_procent')
                }, function(data2, menu2)
                    if tonumber(data2.value) then
                        menu2.close()
                        local procent = tonumber(data2.value) / 100
                        startHvidvask(amount, procent)
                    else
                        exports['id_notify']:notify({
                            message = _U('not_number'),
                            type = 'error'
                        })
                    end
                end, function(data2, menu2)
                    menu2.close()
                    menu.close()
                    showPromp = true
                end)
            else
                exports['id_notify']:notify({
                    message = _U('not_number'),
                    type = 'error'
                })
            end
        end, function(data, menu)
            menu.close()
            showPromp = true
        end)
    elseif _FRAMEWORK == 'QBCORE' then
        local dialog = exports['qb-input']:ShowInput({
            header = _U('hvidvaskmenu_header'),
            submitText = _U('hvidvaskmenu_submit'),
            inputs = {
                {
                    text = _U('hvidvaskmenu_amount'),
                    name = "amount",
                    type = "number",
                    isRequired = true,
                },
                {
                    text = _U('hvidvaskmenu_procent'),
                    name = "procent",
                    type = "number",
                    isRequired = true,
                },
            },
        })

        if dialog ~= nil then
            local procent = tonumber(dialog.procent) / 100
            startHvidvask(tonumber(dialog.amount), procent)
        else
            showPromp = true
        end
    else
        local amount = nil
        DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", _U('hvidvaskmenu_amount'), "", "", "", 200)
        while UpdateOnscreenKeyboard() == 0 do
            DisableAllControlActions(0)
            Wait(0)
        end

        if GetOnscreenKeyboardResult() then
            amount = GetOnscreenKeyboardResult()
        end

        if not amount or not tonumber(amount) then
            exports['id_notify']:notify({
                message = _U('not_number'),
                type = 'error'
            })
            return
        end

        amount = tonumber(amount)

        local procent = nil
        DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", _U('hvidvaskmenu_procent'), "", "", "", 200)
        while UpdateOnscreenKeyboard() == 0 do
            DisableAllControlActions(0)
            Wait(0)
        end

        if GetOnscreenKeyboardResult() then
            procent = GetOnscreenKeyboardResult()
        end

        if not procent or not tonumber(procent) then
            exports['id_notify']:notify({
                message = _U('not_number'),
                type = 'error'
            })
            return
        end

        procent = tonumber(procent) / 100

        if amount and procent then
            startHvidvask(amount, procent)
        end
    end
end

startHvidvask = function(amount, procent)
    Core.Utils:TriggerServerCallback('id_job_revisor:hvidvask:hasBlackMoney', function(hasMoney) 
        if hasMoney then
            local playerPed = PlayerPedId()
            FreezeEntityPosition(playerPed, true)
            local time = amount / Config.Hvidvask.TimeAmount * 60
            exports['id_notify']:notify({
                title = 'Hvidvaskning',
                message = _U('washing_starting', Core.Utils.Math:GroupDigits(amount), math.floor(time / 60)),
                type = 'custom',
                icon = 'bi bi-cash-stack'
            })
            TriggerServerEvent('id_job_revisor:logs:startWash', amount, procent, math.floor(time / 60), serverEventCode)
            exports['progressBars']:startUI(time * 1000, _U('washing'))
            Citizen.Wait(time * 1000)
            FreezeEntityPosition(playerPed, false)
            TriggerServerEvent('id_job_revisor:hvidvask:giveWashedMoney', amount, procent, serverEventCode)
        else
            exports['id_notify']:notify({
                message = _U('not_enough_money', Core.Utils.Math:GroupDigits(amount)),
                type = 'error'
            })
        end  
    end, amount)
end