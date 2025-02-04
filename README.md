# QB Water Purify

A customizable QBCore script designed for **zombie survival servers**, allowing players to scavenge for water in a post-apocalyptic world. Fill bottles from rivers, purify dirty water using filters, or steal water from barrels with a cooldown system. Built with `ox_lib`, `qb-target`, and `ox_inventory` for seamless integration.

## Features
- Fill empty bottles from water sources (rivers, ponds, etc.).
- Purify dirty water using water filters.
- Steal water from any `prop_barrel_02b` in the world with a configurable cooldown.
- Fully configurable water sources, filters, and cooldowns.
- Supports multiple languages with locales.

## Installation
1. Add the `qb-purifywater` folder to your `resources` directory.
2. Add the following items to your `ox_inventory/data/items.lua`:
    ```lua
    ['empty_bottle'] = {
        label = 'Empty Bottle',
        weight = 100,
        stack = true,
        close = true
    },
    ['botella_con_agua_sucia'] = {
        label = 'Bottle with Dirty Water',
        weight = 200,
        stack = true,
        close = true
    },
    ['botella_con_agua_limpia'] = {
        label = 'Bottle with Clean Water',
        weight = 200,
        stack = true,
        close = true
    }
    ```
3. Add `ensure qb-water-bottle` to your `server.cfg`.

## Usage
- Approach a water source and use the `Fill Bottle` option if you have an empty bottle.
- Approach a water filter and use the `Filter Water` option if you have a bottle of dirty water.
- Approach any `prop_barrel_02b` in the world and use the `Steal Water` option if you have an empty bottle (cooldown applies).

## Contact
For any questions or support, you can reach me on Discord: **mundstock**
