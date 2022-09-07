fx_version 'cerulean'

game 'gta5'

author 'PassPar2'

description 'pp2-sceneman A simple script based on qbcore designed to help admins manage scene in server.'

version '0.1'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua', -- Change to the language you want
    'config.lua',
}

client_scripts {
    '@menuv/menuv.lua',
    'client/client.lua',
}

server_scripts {
    'server/server.lua'
}

dependency 'menuv'

lua54 'yes'