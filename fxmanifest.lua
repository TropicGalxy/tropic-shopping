fx_version 'cerulean'
game 'gta5'

lua54 'yes'
author 'TropicGalxy'
description 'a fun way to shop'
version '1.0.0'

shared_script 'config.lua'

server_scripts {
    'server.lua'
}

client_scripts {
    '@ox_lib/init.lua', 
    'client.lua'
}

dependencies {
    'qb-core',
    'ox_inventory',
    'ox_target',
    'ox_lib'   
}
