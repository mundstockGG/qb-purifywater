-- Fill Bottle
RegisterNetEvent('qb-waterbottle:fillBottle', function()
    local playerId = source
    local hasBottle = exports.ox_inventory:GetItem(playerId, Config.Items.emptyBottle, nil, true)

    if hasBottle == 0 then
        return
    end

    exports.ox_inventory:RemoveItem(playerId, Config.Items.emptyBottle, 1)
    exports.ox_inventory:AddItem(playerId, Config.Items.dirtyWaterBottle, 1)
end)

-- Filter Water
RegisterNetEvent('qb-waterbottle:filterWater', function()
    local playerId = source
    local hasDirtyWater = exports.ox_inventory:GetItem(playerId, Config.Items.dirtyWaterBottle, nil, true)

    if hasDirtyWater == 0 then
        return
    end

    exports.ox_inventory:RemoveItem(playerId, Config.Items.dirtyWaterBottle, 1)
    exports.ox_inventory:AddItem(playerId, Config.Items.cleanWaterBottle, 1)
end)

-- Steal Water
RegisterNetEvent('qb-waterbottle:stealWater', function()
    local playerId = source
    local hasBottle = exports.ox_inventory:GetItem(playerId, Config.Items.emptyBottle, nil, true)

    if hasBottle == 0 then
        return
    end

    exports.ox_inventory:RemoveItem(playerId, Config.Items.emptyBottle, 1)
    exports.ox_inventory:AddItem(playerId, Config.Items.dirtyWaterBottle, 1)
end)