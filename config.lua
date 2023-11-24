Config = {}

--===================
--==    General    ==
--===================
--[[
    Distancen på hvor tæt på du skal være på en marker før den vises
    OBS: Skal være et decimal tal
    f.eks 25.0 - for 25
]]
Config.DrawDistance = 25.0

-- Farve på marker (RGB)
Config.MarkerColor = {63, 102, 4, 200}

-- Placering på boss menu (ESX Only)
Config.BossMenu = vector3(-585.61, -336.04, 35.15)

--================
--==    Logs    ==
--================
Config.Logs = {}

--[[
    Den farve der skal være på discord embed, ud fra log kategori
    OBS: Det skal være en HEX farve kode
    Liste over forskellige farver:
        Farve       Hex Code
        Rød         #F44336
        Grøn	    #4CAF50
        Gul 	    #FFEB3B
        Blå 	    #42A5F5
        Lyse Blå	#03A9F4
        Lilla	    #9C27B0
        Hvid	    #F0F0F0
        Orange	    #FF5722
        Grå 	    #9E9E9E
]]
Config.Logs.Colors = {
    StartWash = '#FFEB3B',
    EndWash = '#4CAF50'
}

--[[
    Discord logs
    Indsæet weebhook URL til de forskellige logs, for at de virker
    Det samme URL kan godt bruges til flere logs
]]

Config.Logs.Job = {
    StartWash = 'WEBHOOK_URL',
    EndWash = 'WEBHOOK_URL',
}

--===============
--==    Job    ==
--===============
Config.Job = {}

-- Navn på jobbet
Config.Job.Name = 'accountant'

-- Navn på boss grade (ESX Only)
Config.Job.BossGrade = 'boss'

--[[
    Society information
    [Enable]: Skal er køres med society
    [Name]: Navn på society i database
    [Label]: Label på society
    [Type]: Typen på society
        Typer:
        - private
        - public
]]
Config.Job.Society = {
    Enable = true,
    Name = 'society_accountant',
    Label = 'Revisor',
    Type = 'private'
}

--================
--==    Blip    ==
--================
Config.Blip = {}

-- Angiv om der skal være en blip på mappet
Config.Blip.Enable = true

-- Placering på blip
Config.Blip.coords = vector3(-592.28, -344.9, 35.15)

--[[
    Blip ikon og farve
    Du kan finde alle ikoner og farver her:
        https://docs.fivem.net/docs/game-references/blips/
]]
Config.Blip.sprite = 182
Config.Blip.color = 5

--[[
    Den måde blip bliver vist på
        2 = Main map og minimap
        3 = Kun på main map
        5 = Kun på minimap
        8 = Main map og minimap (Kan ikke vælges på map)
]]
Config.Blip.display = 2

-- Størrelse på blip
Config.Blip.scale = 0.7

--====================
--==    Hvidvask    ==
--====================
Config.Hvidvask = {}

-- Lokation revisore hvidvasker
Config.Hvidvask.Loc = vector3(-581.43, -346.1, 35.16)

--[[
    Hvidvask marker
    [type]: Marker type
        Du kan finde typer her:
            https://docs.fivem.net/docs/game-references/markers/
    [scale]: Størrelse på marker
    [bobUpAndDown]: Om markeren skal hoppe op og ned
    [faceCamera]: Om markeren skal bevæge sig efter kameraet hos spilleren
    [rotate]: Om markeren skal roterer
]]
Config.Hvidvask.Marker = {
    type = 29,
    scale = vector3(0.7, 0.7, 0.7),
    bobUpAndDown = false,
    faceCamera = true,
    rotate = false
}

-- Hvor lang tid det tager og vaske x antal penge på et minut
Config.Hvidvask.TimeAmount = 50000

-- Hvor mange procent revisor firmaet tager af de vaskede penge
Config.Hvidvask.Take = 20