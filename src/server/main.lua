--[[
  This file is part of Walker974 Scripts.
  Copyright (c) Walker974  - All Rights Reserved.
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

local ESX;
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("walker_weaponshop:buyWeapon", function(hash, price)
    if (not (hash) or not (price)) then return end;
    local _src <const> = source;
    if (not (_src)) then return end;
    local xPlayer = ESX.GetPlayerFromId(_src);
    if (not (xPlayer)) then return end;
    if (xPlayer.getMoney() < price) then
        TriggerClientEvent("esx:showNotification", _src, "~r~Vous n'avez pas assez d'argent.")
        return;
    end
    xPlayer.removeMoney(price);
    xPlayer.addWeapon(hash, 100);
    TriggerClientEvent("esx:showNotification", _src, "~g~Vous avez acheté une arme pour ~g~"..price.."$~s~.")
end)