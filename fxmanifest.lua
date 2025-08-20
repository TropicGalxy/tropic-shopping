fx_version 'cerulean'
game 'gta5'

lua54 'yes'
author 'TropicGalxy'
description 'a fun way to shop'
version '1.5'

shared_script 'config.lua'

server_scripts {
    'server.lua'
}

client_scripts {
    '@ox_lib/init.lua', 
    'client.lua'
}

