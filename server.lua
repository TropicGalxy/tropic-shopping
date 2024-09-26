QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('tropic-shopping:checkout')
AddEventHandler('tropic-shopping:checkout', function(totalCost, items)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if not totalCost or type(totalCost) ~= 'number' or totalCost <= 0 then
        TriggerClientEvent('ox_lib:notify', src, { title = "Error", description = "Invalid total cost.", type = 'error' })
        return
    end

    if type(items) ~= 'table' or next(items) == nil then
        TriggerClientEvent('ox_lib:notify', src, { title = "Error", description = "Invalid items.", type = 'error' })
        return
    end

    if not xPlayer then
        TriggerClientEvent('ox_lib:notify', src, { title = "Error", description = "Invalid player.", type = 'error' })
        return
    end

    if xPlayer.Functions.RemoveMoney("cash", totalCost) then
        for itemName, itemData in pairs(items) do
            if not exports.ox_inventory:CanCarryItem(src, itemName, itemData.count) then
                TriggerClientEvent('ox_lib:notify', src, { title = "Inventory", description = "Not enough space in inventory!", type = 'error' })
                return
            end
        end

        for itemName, itemData in pairs(items) do
            xPlayer.Functions.AddItem(itemName, itemData.count)
        end

        TriggerClientEvent('ox_lib:notify', src, { title = "Checkout", description = "Items purchased for $" .. totalCost, type = 'success' })
    else
        TriggerClientEvent('ox_lib:notify', src, { title = "Checkout", description = "Not enough money to complete purchase!", type = 'error' })
    end
end)
