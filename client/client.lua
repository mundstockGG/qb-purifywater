-- Fill Bottle
local function fillBottle()
    local hasBottle = exports.ox_inventory:Search('count', Config.Items.emptyBottle) > 0

    if not hasBottle then
        return lib.notify({ type = 'error', description = Locales.noBottle })
    end

    TriggerServerEvent('qb-waterbottle:fillBottle')
end

RegisterNetEvent('qb-waterbottle:fillBottle', fillBottle)

-- Filter Water
local function filterWater()
    local hasDirtyWater = exports.ox_inventory:Search('count', Config.Items.dirtyWaterBottle) > 0

    if not hasDirtyWater then
        return lib.notify({ type = 'error', description = Locales.noDirtyWater })
    end

    lib.progressBar({
        duration = Config.FilterDuration,
        label = Locales.filtering,
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true
        }
    })

    TriggerServerEvent('qb-waterbottle:filterWater')
end

exports['qb-target']:AddTargetModel(Config.WaterFilters[1].prop, {
    options = {
        {
            type = 'client',
            event = 'qb-waterbottle:filterWater',
            icon = 'fas fa-filter',
            label = 'Filter Water'
        }
    },
    distance = 2.0
})

RegisterNetEvent('qb-waterbottle:filterWater', filterWater)

-- Steal Water
RegisterNetEvent('qb-waterbottle:stealWater', function(data)
    local barrelEntity = data.entity
    local barrelModel = GetEntityModel(barrelEntity)
    local hasBottle = exports.ox_inventory:Search('count', Config.Items.emptyBottle) > 0

    if not hasBottle then
        return lib.notify({ type = 'error', description = Locales.noBottle })
    end

    -- Start cooldown
    if Config.Cooldown.enabled then
        barrelCooldowns[barrelModel] = GetGameTimer() + (Config.Cooldown.duration * 1000)
    end

    lib.progressBar({
        duration = 5000, -- 5 seconds to steal water
        label = Locales.stealWater,
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true
        }
    })

    TriggerServerEvent('qb-waterbottle:stealWater')
end)