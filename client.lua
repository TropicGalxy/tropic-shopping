local basket = false
local basketItems = {}

Citizen.CreateThread(function()
    for storeName, storeData in pairs(Config.Stores) do
        if Config.Target == 'ox' then
            exports.ox_target:addSphereZone({
                coords = storeData.basketLocation,
                radius = 0.9,
                options = {
                    {
                        label = "Grab Basket",
                        icon = "fas fa-shopping-basket",
                        onSelect = function()
                            grabBasket(storeName)
                        end,
                    },
                    {
                        label = "Put Away Basket",
                        icon = "fas fa-trash-alt",
                        onSelect = function()
                            putAwayBasket(storeName)
                        end,
                        canInteract = function()
                            return basket
                        end
                    }
                },
            })
        elseif Config.Target == 'qb' then
            exports['qb-target']:AddBoxZone("basket_"..storeName, storeData.basketLocation, 1.0, 1.0, {
                name = "basket_"..storeName,
                heading = 0,
                debugPoly = false,
                minZ = storeData.basketLocation.z - 1,
                maxZ = storeData.basketLocation.z + 1,
            }, {
                options = {
                    {
                        type = "client",
                        icon = "fas fa-shopping-basket",
                        label = "Grab Basket",
                        action = function()
                            grabBasket(storeName)
                        end
                    },
                    {
                        type = "client",
                        icon = "fas fa-trash-alt",
                        label = "Put Away Basket",
                        canInteract = function()
                            return basket
                        end,
                        action = function()
                            putAwayBasket(storeName)
                        end
                    },
                },
                distance = 1.5
            })
        end
    end
end)

function getNearestStore(playerCoords)
    local nearestStore = nil
    local nearestDistance = math.huge

    for storeName, storeData in pairs(Config.Stores) do
        local basketCoords = storeData.basketLocation
        local distance = #(playerCoords - basketCoords)

        if distance < nearestDistance then
            nearestDistance = distance
            nearestStore = storeName
        end
    end

    return nearestStore
end

Citizen.CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local shouldWait = true

        local nearestStore = getNearestStore(playerCoords)

        if nearestStore then
            local storeData = Config.Stores[nearestStore]
            local basketCoords = storeData.basketLocation
            local distance = #(playerCoords - basketCoords)

            if distance < 10.0 then
                DrawMarker(20, basketCoords.x, basketCoords.y, basketCoords.z + 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 255, 0, 150, true, true, 2, nil, nil, false)
                shouldWait = false
            end

            if distance > 15.0 and basket then
                lib.notify({ title = "Basket", description = "You got caught shoplifting and dropped all the items!", type = 'error' })
                clearBasket()
            end
        end

        if shouldWait then
            Wait(500)
        else
            Wait(0)
        end
    end
end)

function grabBasket(storeName)
    if not basket then
        ExecuteCommand('e market')
        basket = true
        basketItems = {}
        lib.notify({ title = "Basket", description = "You grabbed a shopping basket!" })
    else
        lib.notify({ title = "Basket", description = "You already have a basket!", type = 'error' })
    end
end

function putAwayBasket(storeName)
    if basket then
        clearBasket()
        lib.notify({ title = "Basket", description = "You put away the basket." })
    else
        lib.notify({ title = "Basket", description = "You don't have a basket to put away!", type = 'error' })
    end
end

function clearBasket()
    ExecuteCommand('e c')
    basketItems = {}
    basket = false
    lib.notify({ title = "Basket", description = "You no longer have a basket." })
end

Citizen.CreateThread(function()
    for storeName, storeData in pairs(Config.Stores) do
        for _, zone in pairs(storeData.zones) do
            if Config.Target == 'ox' then
                exports.ox_target:addSphereZone({
                    coords = zone.location,
                    radius = 0.8,
                    options = {
                        {
                            label = "Browse " .. zone.label,
                            icon = "fas fa-box",
                            onSelect = function()
                                openItemMenu(zone.items)
                            end,
                        }
                    },
                })
            elseif Config.Target == 'qb' then
                exports['qb-target']:AddBoxZone("zone_"..storeName, zone.location, 1.0, 1.0, {
                    name = "zone_"..storeName,
                    heading = 0,
                    debugPoly = false,
                    minZ = zone.location.z - 1,
                    maxZ = zone.location.z + 1,
                }, {
                    options = {
                        {
                            type = "client",
                            icon = "fas fa-box",
                            label = "Browse " .. zone.label,
                            action = function()
                                openItemMenu(zone.items)
                            end
                        }
                    },
                    distance = 1.5
                })
            end
        end
    end
end)

function openItemMenu(items)
    local contextMenu = {}

    for _, item in pairs(items) do
        table.insert(contextMenu, {
            title = item.label .. " ($" .. item.price .. ")",
            description = "Add to basket",
            icon = "nui://ox_inventory/web/images/"..item.name..".png",
            onSelect = function()
                promptItemQuantity(item)
            end
        })
    end

    lib.registerContext({
        id = 'item_selection',
        title = 'Select Items',
        options = contextMenu
    })

    lib.showContext('item_selection')
end

function promptItemQuantity(item)
    local input = lib.inputDialog('Select Quantity', {
        {type = 'number', label = 'Quantity', description = 'How many would you like to add?', min = 1, default = 1}
    })

    if input then
        local quantity = tonumber(input[1])
        if quantity and quantity > 0 then
            addItemToBasket(item, quantity)
        else
            lib.notify({ title = "Basket", description = "Invalid quantity!", type = 'error' })
        end
    end
end

function addItemToBasket(item, quantity)
    if basket then
        if not basketItems[item.name] then
            basketItems[item.name] = { label = item.label, count = 0, price = item.price }
        end
        basketItems[item.name].count = basketItems[item.name].count + quantity
        ExecuteCommand('e market2')

        lib.notify({
            title = "Basket",
            description = "Added " .. quantity .. "x " .. item.label .. " to your basket!",
            type = 'success'
        })
    else
        lib.notify({
            title = "Basket",
            description = "You need to grab a basket first!",
            type = 'error'
        })
    end
end

Citizen.CreateThread(function()
    for storeName, storeData in pairs(Config.Stores) do
        if Config.Target == 'ox' then
            exports.ox_target:addSphereZone({
                coords = storeData.checkoutLocation,
                radius = 0.7,
                options = {
                    {
                        label = "Checkout",
                        icon = "fas fa-cash-register",
                        onSelect = function()
                            checkout(storeName)
                        end,
                    }
                },
            })
        elseif Config.Target == 'qb' then
            exports['qb-target']:AddBoxZone("checkout_"..storeName, storeData.checkoutLocation, 1.0, 1.0, {
                name = "checkout_"..storeName,
                heading = 0,
                debugPoly = false,
                minZ = storeData.checkoutLocation.z - 1,
                maxZ = storeData.checkoutLocation.z + 1,
            }, {
                options = {
                    {
                        type = "client",
                        icon = "fas fa-cash-register",
                        label = "Checkout",
                        action = function()
                            checkout(storeName)
                        end
                    },
                },
                distance = 1.5
            })
        end
    end
end)

function checkout(storeName)
    if basket then
        local totalCost = 0
        for _, itemData in pairs(basketItems) do
            totalCost = totalCost + (itemData.price * itemData.count)
        end

        if totalCost > 0 then
            TriggerServerEvent('tropic-shopping:checkout', totalCost, basketItems)

            lib.notify({ title = "Basket", description = "Purchase complete! Total cost: $" .. totalCost })
            clearBasket()
        else
            lib.notify({ title = "Basket", description = "Your basket is empty!", type = 'error' })
        end
    else
        lib.notify({ title = "Basket", description = "You don't have a basket!", type = 'error' })
    end
end
