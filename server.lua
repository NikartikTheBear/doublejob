ESX.RegisterCommand("setfaction, {"admin"}, function(xPlayer, args, showError)
    if args == nil then return end
    local target = tonumber(args[1]) or xPlayer.source
    local name = tostring(args[2])
    local grade = tonumber(args[3])

    local xTarget = ESX.GetPlayerFromId(target)
    if xTarget.identifier == nil then return end
    if not xTarget then return end
    xTarget.setMeta("faction", {
        faction = name,
        grade = grade
    })
    print(("ID [%s] -> Faction: %s - Grade: %s"):format(xTarget.source, name, grade ))
end, false)


ESX.RegisterCommand("printfaction, {"admin"}, function(xPlayer, args, showError)
    local faction = xPlayer.getMeta("faction")
    print(("Faction: %s - Grade %s"):format(faction.faction, faction.grade))
end, false)




exports("getFaction", function(id)
    local source = id 
    local xPlayer = ESX.GetPlayerFromId(source)
    local data = xPlayer.getMeta("faction")
    return data
end)

exports("setFaction", function(id, faction, grade)
    local source = id
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setMeta("faction", {
        faction = faction,
        grade = grade
    })
end)
