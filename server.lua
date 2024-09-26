ESX = exports["es_extended"]:getSharedObject()

lib.callback.register("firekeeper:init", function (source)

    local playerIdentifier = ESX.GetPlayerFromId(source).getIdentifier()

    for i = 1, #Identifiers do
        if Identifiers[i] == playerIdentifier then
            return true
        end
    end

    return false
end)