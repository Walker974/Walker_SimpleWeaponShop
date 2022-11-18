--[[
  This file is part of Walker974 Scripts.
  Copyright (c) Walker974  - All Rights Reserved.
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

local ESX;
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

CreateThread(function()
    while (true) do
        local timer = 850
        local ped_position = GetEntityCoords(PlayerPedId())
        for _, v in ipairs(WeaponShop.shops) do
            local distance = #(ped_position - v.position)
            if (distance < 10) then
                timer = 5
                DrawMarker(2, v.position.x, v.position.y, v.position.z - 0.95, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.5, 255, 255, 255, 100, 0, 0, 0, 0, 0, 0, 0)
                if (distance < 1) then
                    ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour accéder au ~b~magasin d'armes~s~.")
                    if (IsControlJustReleased(0, 38)) then

                    end
                end
            end
        end
        Wait(timer)
    end
end)