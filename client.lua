--[[
    Author: exilepilot
    Create shader for each hydra.
]]

local textures = {
    "skins/blue.png",
    "skins/flames.png",
    "skins/galaxy.png",
    "skins/hero.png",
    "skins/sw.png",
    "skins/uw.png"
}

function applyTexture(index)
    if getElementModel(source) == 520 then
        local texture = dxCreateTexture(textures[index])
        local shader = dxCreateShader("replace.fx")
        engineApplyShaderToWorldTexture(shader, "hydrabody256", source)
        dxSetShaderValue(shader, "gTexture", texture)
    end
end
addEvent("onClientApplyTexture", true)
addEventHandler("onClientApplyTexture", root, applyTexture)

function sync(player)
    if player == localPlayer then
        triggerServerEvent("onApplyTexture", source, math.random(#textures))
    end
end
addEventHandler("onClientVehicleEnter", root, sync)
