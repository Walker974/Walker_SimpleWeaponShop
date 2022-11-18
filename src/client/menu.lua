--[[
  This file is part of Walker974 Scripts.
  Copyright (c) Walker974  - All Rights Reserved.
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

local main_menu = RageUI.CreateMenu("Magasin d'armes", "Choisissez une catégorie.");
local menuCurrentlyOpen = false;

main_menu:isVisible(function(items)
    items:Separator("Bienvenue dans le magasin d'armes.")
    for _, v in ipairs(WeaponShop.weapons) do
        local has_weapon = HasPedGotWeapon(PlayerPedId(), GetHashKey(v.hash), false);
        items:Button(v.name, nil, {RightLabel = has_weapon and "~r~Vous l'avez" or v.price.."$"}, has_weapon, function(_, _, Selected)
            if (Selected) then
                TriggerServerEvent("walker_weaponshop:buyWeapon", v.hash, v.price)
            end
        end)
    end
end)

---@param shop_coords table
function OpenWeaponShopMenu(shop_coords)
    if (not (shop_coords)) then return end;
    if (menuCurrentlyOpen) then
        return;
    end
    main_menu:toggle();
    menuCurrentlyOpen = true;
    CreateThread(function()
        while (menuCurrentlyOpen) do
            local dst = #(GetEntityCoords(PlayerPedId()) - shop_coords);
            if (dst > 5.0) then
                main_menu:Close();
                menuCurrentlyOpen = false;
                break;
            end
            Wait(1000)
        end
    end)
end