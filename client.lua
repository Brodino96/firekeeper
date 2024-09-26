local _, playerHash = AddRelationshipGroup("player")
local _, reduxHash = AddRelationshipGroup("redux")

local function init()
    lib.callback("firekeeper:init", false, function (redux)
        local playerPed = PlayerPedId()
        if redux then
            SetPedRelationshipGroupHash(playerPed, reduxHash)
        else
            SetPedRelationshipGroupHash(playerPed, playerHash)
            SetEntityCanBeDamagedByRelationshipGroup(playerPed, false, reduxHash)
        end
    end)
end

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", init)

init()