--[[
  This file is part of Walker974 Scripts.
  Copyright (c) Walker974  - All Rights Reserved.
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

--- Create Blips
for _, v in ipairs(WeaponShop.shops) do
    local blip = AddBlipForCoord(v.position);
    SetBlipSprite(blip, 110);
    SetBlipDisplay(blip, 4);
    SetBlipScale(blip, 0.7);
    SetBlipColour(blip, 47);
    SetBlipAsShortRange(blip, true);
    BeginTextCommandSetBlipName("STRING");
    AddTextComponentString(v.name);
    EndTextCommandSetBlipName(blip);
end