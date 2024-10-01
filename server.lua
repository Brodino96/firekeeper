ESX = exports["es_extended"]:getSharedObject()

lib.callback.register("firekeeper:init", function (source)

    local playerIdentifier = string.gsub(ESX.GetPlayerFromId(source).getIdentifier(), "char1:", "")

    for i = 1, #Identifiers do
        if Identifiers[i] == playerIdentifier then
            return true
        end
    end

    return false
end)