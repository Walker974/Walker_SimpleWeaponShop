--[[
  This file is part of Walker974 Scripts.
  Copyright (c) Walker974  - All Rights Reserved.
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

fx_version "adamant"
game "gta5"

author "Walker974"
description "Walker974 Weapon Shop"

lua54 "yes"
use_fxv2_oal "yes"

shared_script "src/shared/main.lua"

server_scripts {
    "src/server/*.lua"
}

client_scripts {
    --- RageUI
    "src/vendor/RageUI/init.lua",
    "src/vendor/RageUI/menu/RageUI.lua",
    "src/vendor/RageUI/menu/Menu.lua",
    "src/vendor/RageUI/menu/MenuController.lua",
    "src/vendor/RageUI/components/*.lua",
    "src/vendor/RageUI/menu/elements/*.lua",
    "src/vendor/RageUI/menu/items/*.lua",
    "src/vendor/RageUI/menu/panels/*.lua",
    "src/vendor/RageUI/menu/windows/*.lua",

    "src/client/*.lua"
}