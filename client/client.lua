local function changeTypeDensity(newDensity, newDensityType, newDensityTypeLabel)
  exports['qb-smallresources']:DecorSet(newDensityType, newDensity)
  TriggerServerEvent("pp2-sceneman:server:densityChanged", newDensity, newDensityTypeLabel)
end

local menu2 = MenuV:CreateMenu(false, Lang:t("sceneman.ped_density_options"), Config.menuLocation, 220, 20, 60, 'size-125', 'none', 'menuv', 'test2')
RegisterNetEvent('pp2-sceneman:client:openMenu', function()
  MenuV:OpenMenu(menu2)
end)

--[[
    Scene Main menu buttons
--]]

local vehiculesDensityValue = menu2:AddRange({ icon = '🚗', label = Lang:t("sceneman.vehicule_density_option"), min = 0, max = 10, value = 0})
vehiculesDensityValue:On("select", function(_, value)
  changeTypeDensity(value/10, 'vehicle', 'vehicules')
end)

local parkedVehiculesDensityValue = menu2:AddRange({ icon = '🅿️', label = Lang:t("sceneman.parked_vehicule_density_option"), min = 0, max = 10, value = 0})
parkedVehiculesDensityValue:On("select", function(_, value)
  changeTypeDensity(value/10, 'parked', 'parked vehicules')
end)

local pedDensityValue = menu2:AddRange({ icon = '🏃', label = Lang:t("sceneman.ped_density_option"), min = 0, max = 10, value = 0})
pedDensityValue:On("select", function(_, value)
  changeTypeDensity(value/10, 'peds', 'peds')
end)

local scenarioPedDensityValue = menu2:AddRange({ icon = '👨‍💻', label = Lang:t("sceneman.scenario_density_option"), min = 0, max = 10, value = 0})
scenarioPedDensityValue:On("select", function(_, value)
  changeTypeDensity(value/10, 'scenario', 'scenario')
end)

local multiplierDensityValue = menu2:AddRange({ icon = '👨‍👩‍👧‍👦', label = Lang:t("sceneman.multiplier_density_option"), min = 0, max = 10, value = 0})
multiplierDensityValue:On("select", function(_, value)
  changeTypeDensity(value/10, 'multiplier', 'multiplier')
end)

local removeVehiculesFromScene = menu2:AddButton({
  icon = '⛔',
  label = Lang:t("sceneman.remove_all_vehicles"),
  value = nil,
  description = Lang:t("sceneman.remove_all_vehicles_description"),
  select = function(btn)
    TriggerServerEvent("pp2-sceneman:server:removeAll", 'vehicles')
  end
})

local removePedsVehiculesFromScene = menu2:AddButton({
  icon = '⛔',
  label = Lang:t("sceneman.remove_all_peds"),
  value = nil,
  description = Lang:t("sceneman.remove_all_peds_description"),
  select = function(btn)
    TriggerServerEvent("pp2-sceneman:server:removeAll", 'peds')
  end
})
