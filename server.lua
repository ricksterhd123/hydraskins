function sendTextureIndex(index)
    for i, v in ipairs(getElementsByType("player")) do
        triggerClientEvent(v, "onClientApplyTexture", source, index)
    end
end
addEvent("onApplyTexture", true)
addEventHandler("onApplyTexture", root, sendTextureIndex)
