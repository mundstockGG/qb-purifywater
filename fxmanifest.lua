fx_version 'cerulean'
game 'gta5'

author 'mundstock'
description 'A script for filling, filtering, and stealing water bottles, designed for zombie survival servers.'
version '1.0.0'

dependencies {
    'qb-core',
    "@ox_lib/init.lua",
}

shared_scripts {
    "@ox_lib/init.lua",
    "shared/config.lua",
    "locales/es.lua",
    "locales/en.lua"
}

client_scripts {
    "client/client.lua",
    "client/polyzones.lua"
}

server_scripts {
    "server/server.lua",
}