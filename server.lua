QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('tropic-shopping:checkout')
AddEventHandler('tropic-shopping:checkout', function(storeKey, items)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if not xPlayer then
        TriggerClientEvent('ox_lib:notify', src, { title = "Error", description = "Player not found.", type = 'error' })
        return
    end

    local store = Config.Stores[storeKey]
    if not store then
        TriggerClientEvent('ox_lib:notify', src, { title = "Error", description = "Invalid store.", type = 'error' })
        return
    end

    local totalCost = 0
    for itemName, itemData in pairs(items) do
        local itemFound = false

        for _, zone in pairs(store.zones) do
            for _, zoneItem in pairs(zone.items) do
                if zoneItem.name == itemName then
                    itemFound = true
                    if type(itemData.count) ~= 'number' or itemData.count <= 0 then
                        TriggerClientEvent('ox_lib:notify', src, { title = "Error", description = "Invalid quantity for item: " .. itemName, type = 'error' })
                        return
                    end
                    totalCost = totalCost + (zoneItem.price * itemData.count)
                end
            end
        end

        if not itemFound then
            TriggerClientEvent('ox_lib:notify', src, { title = "Error", description = "Invalid item: " .. itemName, type = 'error' })
            return
        end
    end

    if totalCost <= 0 then
        TriggerClientEvent('ox_lib:notify', src, { title = "Error", description = "Invalid total cost.", type = 'error' })
        return
    end

    if Config.Inventory == 'ox' then
        if not exports.ox_inventory:RemoveItem(src, 'cash', totalCost) then
            TriggerClientEvent('ox_lib:notify', src, { title = "Error", description = "Not enough money.", type = 'error' })
            return
        end

        for itemName, itemData in pairs(items) do
            if not exports.ox_inventory:CanCarryItem(src, itemName, itemData.count) then
                TriggerClientEvent('ox_lib:notify', src, { title = "Error", description = "Not enough space for item: " .. itemName, type = 'error' })
                return
            end
        end

        for itemName, itemData in pairs(items) do
            exports.ox_inventory:AddItem(src, itemName, itemData.count)
        end

    elseif Config.Inventory == 'qb' then
        if not xPlayer.Functions.RemoveMoney("cash", totalCost) then
            TriggerClientEvent('ox_lib:notify', src, { title = "Error", description = "Not enough money.", type = 'error' })
            return
        end

        for itemName, itemData in pairs(items) do
            if not xPlayer.Functions.AddItem(itemName, itemData.count) then
                TriggerClientEvent('ox_lib:notify', src, { title = "Error", description = "Not enough space for item: " .. itemName, type = 'error' })
                return
            end
        end
    end

    TriggerClientEvent('ox_lib:notify', src, { title = "Success", description = "Purchase complete! Total cost: $" .. totalCost, type = 'success' })
end)
