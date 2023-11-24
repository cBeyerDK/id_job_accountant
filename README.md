██╗██████╗░███████╗███╗░░██╗████████╗██╗████████╗██╗░░░██╗  ░██████╗████████╗░█████╗░██████╗░███████╗
██║██╔══██╗██╔════╝████╗░██║╚══██╔══╝██║╚══██╔══╝╚██╗░██╔╝  ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝
██║██║░░██║█████╗░░██╔██╗██║░░░██║░░░██║░░░██║░░░░╚████╔╝░  ╚█████╗░░░░██║░░░██║░░██║██████╔╝█████╗░░
██║██║░░██║██╔══╝░░██║╚████║░░░██║░░░██║░░░██║░░░░░╚██╔╝░░  ░╚═══██╗░░░██║░░░██║░░██║██╔══██╗██╔══╝░░
██║██████╔╝███████╗██║░╚███║░░░██║░░░██║░░░██║░░░░░░██║░░░  ██████╔╝░░░██║░░░╚█████╔╝██║░░██║███████╗
╚═╝╚═════╝░╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░░╚═╝░░░░░░╚═╝░░░  ╚═════╝░░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝╚══════╝

# Revisor Job
Hvidvask penge som revisor. Du kan selv vælge procent du vil hvidvaske i osv.

Du kan ændre beskeder under `shared/langs/da.lua`
Du kan indstille scriptet efter dine behov i `config.lua`
Du kan ændre de forskellige funktioner der bliver brugt i scriptet i hhv. `shared/utils.lua`, `server/utils.lua` og `client/utils.lua`

# SQL
Alle `.sql` filer ligger under `SQL` mappen.
Kør `id_job_accountant_ESX.sql` - Hvis din server bruger ESX
Kør `id_job_accountant_QB.sql` - Hvis din server bruger QBCore

# Dependencies
Alle dependencies kan hentes på vores discord under "kunde"-kategorien.
  - id_core
  - id_notify
  - id_helpnotify
  - oxmysql

# QBCore
[JOB]:
Tilføj jobbet inde i `qb-core/shared/jobs.lua`
```LUA
['accountant'] = {
    label = 'Revisor',
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Elev',
            payment = 350
        },
        ['1'] = {
            name = 'Ansat',
            payment = 500
        },
        ['2'] = {
            name = 'Chef',
            isboss = true,
            payment = 1000
        },
    },
},
```
Husk og tilføj sted til management i `qb-management/client/cl_config.lua`
Husk og ændre under `server/utils.lua` - så den tager sorte penge i stedet for cash.

# Support
Er der ting i scriptet der ikke virker, så opret en ticket på vores discord: https://discord.gg/E4kMrhQRS3


Copyright(c) Identity Store 2022-2030