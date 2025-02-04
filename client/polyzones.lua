local waterZones = {}
local barrelCooldowns = {}

-- Water Sources
CreateThread(function()
    local waterZone = CircleZone:Create(vector2(2151.52, 3828.03), 33.42, {
        name = "waterSource1",
        debugPoly = false -- Set to true to visualize the polyzone in-game
    })

    waterZone:onPlayerInOut(function(isInside)
        if isInside then
            exports['qb-target']:AddTargetModel('prop_watercooler', {
                options = {
                    {
                        type = 'client',
                        event = 'qb-waterbottle:fillBottle',
                        icon = 'fas fa-fill-drip',
                        label = 'Fill Bottle'
                    }
                },
                distance = 2.0
            })
        else
            exports['qb-target']:RemoveTargetModel('prop_watercooler', {'Fill Bottle'})
        end
    end)

    table.insert(waterZones, waterZone)
end)

-- Barrels
CreateThread(function()
    exports['qb-target']:AddTargetModel('prop_barrel_02b', {
        options = {
            {
                type = 'client',
                event = 'qb-waterbottle:stealWater',
                icon = 'fas fa-hand-holding-water',
                label = 'Steal Water',
                canInteract = function(entity)
                    local barrelModel = GetEntityModel(entity)
                    return not barrelCooldowns[barrelModel] or barrelCooldowns[barrelModel] <= GetGameTimer()
                end
            }
        },
        distance = 2.0
    })
end)