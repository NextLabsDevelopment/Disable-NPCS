Citizen.CreateThread(function()
    while true do
        SetVehicleDensityMultiplierThisFrame(0.0)
        SetPedDensityMultiplierThisFrame(0.0)
        SetRandomVehicleDensityMultiplierThisFrame(0.0)
        SetParkedVehicleDensityMultiplierThisFrame(0.0)
        SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)

        local playerPed = GetPlayerPed(-1)
        local pos = GetEntityCoords(playerPed)
        RemoveVehiclesFromGeneratorsInArea(pos.x - 500.0, pos.y - 500.0, pos.z - 500.0, pos.x + 500.0, pos.y + 500.0, pos.z + 500.0)

        SetGarbageTrucks(false)
        SetRandomBoats(false)

        for i = 1, 15 do
            EnableDispatchService(i, false)
        end

        Citizen.Wait(1)
    end
end)