
local Translations = {
  sceneman = {
    ["scene-manager"] = "Open scene manager menu",
    ["ped_density_options"] = "Ped Density Options",
    ["ped_density_options_desc"] = "Ped Density Options Description",
    ["remove_all_vehicles"] = "Remove all vehicules",
    ["remove_all_peds"] = "Remove all peds",
    ["remove_all_vehicles_description"] = "Click Enter to remove all vehicles from current scene",
    ["remove_all_peds_description"] = "Click Enter to remove all peds from current scene",
    ["vehicule_density_option"] = "Vehicule Density",
    ["parked_vehicule_density_option"] = "P.Vehicule Density",
    ["ped_density_option"] = "PEDS Density",
    ["scenario_density_option"] = "Scenario Density",
    ["multiplier_density_option"] = "Density Multiplier",
    ["open_scene_manager"] = "Open scene manager menu",
    ["density_changed"] = "%{type} density changed to %{newDensity}",
    ["entities_removed"] = "All %{type} have been removed"
  }
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
