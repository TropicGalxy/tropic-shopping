local basket = false
local basketItems = {}

Citizen.CreateThread(function()
    for storeName, storeData in pairs(Config.Stores) do
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
    end
end)

Citizen.CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local shouldWait = true

        for storeName, storeData in pairs(Config.Stores) do
            local basketCoords = storeData.basketLocation
            local distance = #(playerCoords - basketCoords)

            if distance < 10.0 then
                DrawMarker(20, basketCoords.x, basketCoords.y, basketCoords.z + 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 255, 0, 150, true, true, 2, nil, nil, false)
                shouldWait = false
            end

            if distance > 15.0 and basket then
                lib.notify({ title = "Basket", description = "You got caught shop lifiting and you dropped all the items!", type = 'error' })
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
        end
    end
end)

function openItemMenu(items)
    local contextMenu = {}

    for _, item in pairs(items) do
        table.insert(contextMenu, {
            title = item.label .. " ($" .. item.price .. ")",
            description = "Add to basket",
            icon = item.icon,
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
    end
end)

function checkout(storeName)
    if basket then
        local totalCost = 0
        for _, itemData in pairs(basketItems) do
            totalCost = totalCost + (itemData.count * itemData.price)
        end

        if totalCost > 0 then
            lib.registerContext({
                id = 'checkout_confirm',
                title = "Total: $" .. totalCost,
                options = {
                    {
                        title = "Confirm Purchase",
                        icon = "fa-solid fa-check",
                        onSelect = function()
                            TriggerServerEvent('tropic-shopping:checkout', totalCost, basketItems)
                            clearBasket()
                        end
                    },
                    {
                        title = "Cancel",
                        icon = "fa-solid fa-times",
                    }
                }
            })

            lib.showContext('checkout_confirm')
        else
            lib.notify({ title = "Basket", description = "Your basket is empty!", type = 'error' })
        end
    else
        lib.notify({ title = "Basket", description = "You don't have a basket!", type = 'error' })
    end
end
