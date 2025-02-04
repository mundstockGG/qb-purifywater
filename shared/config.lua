Config = {}

Config.WaterSources = {
    {
        coords = vector3(0.0, 0.0, 0.0),
        radius = 5.0
    }
}

Config.WaterFilters = {
    {
        coords = vector3(0.0, 0.0, 0.0),
        prop = 'prop_watercooler'
    }
}

Config.Cooldown = {
    enabled = true,
    duration = 60
}

Config.FilterDuration = 7000 -- 7 seconds

Config.Items = {
    emptyBottle = 'empty_bottle',
    dirtyWaterBottle = 'botella_con_agua_sucia',
    cleanWaterBottle = 'botella_con_agua_limpia'
}

Config.Notifications = {
    noBottle = 'You don\'t have a bottle of water.',
    cannotDrink = 'You cannot drink this water.',
    noDirtyWater = 'You don\'t have a bottle of dirty water to purify.',
    filtering = 'Filtering water...',
    filtered = 'Water filtered successfully!',
    stealWater = 'Stealing water...',
    cooldown = 'You must wait before stealing water again.'
}