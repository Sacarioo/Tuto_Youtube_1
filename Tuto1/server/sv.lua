RegisterNetEvent("Tuto1:addItem")
AddEventHandler("Tuto1:addItem", function(name, price)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem(name, 1)
end)