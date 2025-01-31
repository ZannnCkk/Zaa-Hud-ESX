RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    Citizen.Wait(1000)

    SendNUIMessage({
        action = "update",
        job = ESX.PlayerData.job.label,
        id = GetPlayerServerId(PlayerId())
    })

end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    Wait(60)
    SendNUIMessage({
        action = "update",
        job = ESX.PlayerData.job.label,
        id = GetPlayerServerId(PlayerId())
    })

  end)

RegisterNetEvent('esx:setJob', function(job, lastJob)
    SendNUIMessage({
        action = "update",
        job = job.label,
        id = GetPlayerServerId(PlayerId())
    })
end)


