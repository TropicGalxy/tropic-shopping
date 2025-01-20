Config = {}

Config.Target = 'ox' -- 'ox' | 'qb'

Config.Inventory = 'ox' -- 'ox' | 'qb'

Config.UseDispatch = true -- true | false | requires ps-dispatch

Config.EnableBlips = false
Config.Blips = {
    { title = "Ballas 24/7", colour = 1, id = 59, vector3 = vector3(-54.21, -1754.48, 29.42) },
    { title = "Legion 24/7", colour = 1, id = 59, vector3 = vector3(30.78, -1348.47, 29.5) },
    { title = "Ltdgasstation", colour = 1, id = 59, vector3 = vector3(-714.03, -915.61, 19.22) },
    { title = "Mirrorparkgasstation", colour = 1, id = 59, vector3 = vector3(1157.21, -326.21, 69.21) },
    { title = "Vinewood 24/7", colour = 1, id = 59, vector3(378.39, 323.76, 103.57) },
    { title = "Route 15 24/7", colour = 1, id = 59, vector3 = vector3(2558.62, 387.11, 108.62) },
    { title = "Insenoroad 24/7", colour = 1, id = 59, vector3 = vector3(-3039.79, 590.9, 7.91) },
    { title = "Barbarenoroad 24/7", colour = 1, id = 59, vector3(-3240.56, 1006.26, 12.83) },
    { title = "Route 68 24/7", colour = 1, id = 59, vector3 = vector3(542.62, 2671.61, 42.16) },
    { title = "Mntgourdo 24/7", colour = 1, id = 59, vector3 = vector3(1733.13, 6411.36, 35.04) },
    { title = "Grapeseedltd", colour = 1, id = 59, vector3 = vector3(1700.85, 4930.59, 42.06) },
    { title = "Route13 24/7", colour = 1, id = 59, vector3 = vector3(2682.14, 3284.39, 55.24) },
    { title = "Sandy 24/7", colour = 1, id = 59, vector3 = vector3(1966.17, 3742.18, 32.34) },
}


-- the store types are: Grocery, Gun, Leisure, and Other

Config.Stores = {
    ["ballas247"] = {
        basketLocation = vector3(-54.21, -1754.48, 29.42),
        checkoutLocation = vector3(-48.37, -1757.91, 29.42),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(-55.44, -1753.16, 29.42),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(-49.39, -1758.38, 29.42),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(-52.52, -1752.01, 29.42),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(-54.17, -1747.98, 29.42),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["legion247"] = {
        basketLocation = vector3(30.78, -1348.47, 29.5),
        checkoutLocation = vector3(25.75, -1345.58, 29.5),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(26.51, -1348.28, 29.5),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(28.89, -1342.66, 29.5),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(28.85, -1345.17, 29.5),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(33.71, -1346.59, 29.5),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["ltdgasstation"] = {
        basketLocation = vector3(-714.03, -915.61, 19.22),
        checkoutLocation = vector3(-707.4, -914.57, 19.22),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(-715.61, -915.54, 19.22),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(-707.99, -915.62, 19.22),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(-714.12, -912.43, 19.22),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(-718.16, -910.78, 19.22),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["mirrorparkgasstation"] = {
        basketLocation = vector3(1157.21, -326.21, 69.21),
        checkoutLocation = vector3(1163.61, -323.99, 69.21),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(1155.64, -326.29, 69.21),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(1163.15, -325.04, 69.21),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(1156.44, -323.21, 69.21),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(1152.39, -321.96, 69.21),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["vinewood247"] = {
        basketLocation = vector3(378.39, 323.76, 103.57),
        checkoutLocation = vector3(374.23, 327.83, 103.57),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(374.11, 325.03, 103.57),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(378.03, 329.83, 103.57),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(377.29, 327.48, 103.57),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(381.8, 324.89, 103.57),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["route15247"] = {
        basketLocation = vector3(2558.62, 387.11, 108.62),
        checkoutLocation = vector3(2555.51, 382.06, 108.62),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(2558.25, 382.68, 108.62),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(2552.74, 385.68, 108.62),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(2555.25, 385.28, 108.62),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(2557.08, 390.06, 108.62),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["insenoroad247"] = {
        basketLocation = vector3(-3039.79, 590.9, 7.91),
        checkoutLocation = vector3(-3041.04, 585.21, 7.91),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(-3038.64, 586.68, 7.91),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(-3044.82, 587.58, 7.91),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(-3042.45, 588.02, 7.91),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(-3042.39, 593.13, 7.91),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["barbarenoroad247"] = {
        basketLocation = vector3(-3240.56, 1006.26, 12.83),
        checkoutLocation = vector3(-3243.86, 1001.4, 12.83),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(-3241.14, 1001.79, 12.83),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(-3246.5, 1004.96, 12.83),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(-3244.15, 1004.5, 12.83),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(-3242.06, 1009.23, 12.83),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["route68247"] = {
        basketLocation = vector3(542.62, 2671.61, 42.16),
        checkoutLocation = vector3(548.05, 2669.47, 42.16),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(547.09, 2672.06, 42.16),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(545.21, 2666.14, 42.16),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(545.01, 2668.58, 42.16),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(539.97, 2669.49, 42.16),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["route13247"] = {
        basketLocation = vector3(2682.14, 3284.39, 55.24),
        checkoutLocation = vector3(2677.14, 3281.37, 55.24),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(2679.88, 3280.73, 55.24),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(2676.16, 3285.58, 55.24),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(2678.25, 3284.3, 55.24),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(2682.08, 3287.73, 55.24),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["sandy247"] = {
        basketLocation = vector3(1966.17, 3742.18, 32.34),
        checkoutLocation = vector3(1960.33, 3742.14, 32.34),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(1962.36, 3740.21, 32.34),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(1961.71, 3746.31, 32.34),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(1962.75, 3744.17, 32.34),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(1967.85, 3745.05, 32.34),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["grapeseedltd"] = {
        basketLocation = vector3(1700.85, 4930.59, 42.06),
        checkoutLocation = vector3(1698.0, 4924.53, 42.06),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(1701.83, 4931.63, 42.06),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(1697.5, 4925.59, 42.06),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(1703.61, 4928.88, 42.06),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(1707.24, 4931.12, 42.06),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["mntgourdo247"] = {
        basketLocation = vector3(1733.13, 6411.36, 35.04),
        checkoutLocation = vector3(1729.77, 6416.21, 35.04),
        storeType = 'Grocery', 
        zones = { 
            {
                label = "Fruits",
                location = vector3(1729.23, 6413.46, 35.04),
                items = {
                    { name = "apple", label = "Apple", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "orange", label = "Orange", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "banana", label = "Banana", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Snacks",
                location = vector3(1734.09, 6417.32, 35.04),
                items = {
                    { name = "airheads", label = "Air Heads", price = 1, icon = "fa-solid fa-utensils" }, 
                    { name = "bzzz_peanuts", label = "Peanuts", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "bzzz_pretzels", label = "Pretzels", price = 3, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Essentials",
                location = vector3(1732.76, 6415.25, 35.04),
                items = {
                    { name = "mdbutter", label = "Butter", price = 2, icon = "fa-solid fa-utensils" }, 
                    { name = "chocolate", label = "Chocolate", price = 2, icon = "fa-solid fa-utensils" },
                    { name = "flour", label = "Flour", price = 3, icon = "fa-solid fa-utensils" },
                    { name = "bakingsoda", label = "Baking Soda", price = 4, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Drinks",
                location = vector3(1736.42, 6411.7, 35.04),
                items = {
                    { name = "water", label = "Water", price = 2, icon = "fa-solid fa-wine-glass" },
                    { name = "ecola", label = "E-Cola", price = 3, icon = "fa-solid fa-wine-glass" },
                    { name = "sprunk", label = "Sprunk", price = 3, icon = "fa-solid fa-wine-glass" }, 
                    { name = "bzzz_energy", label = "Energy Drink", price = 4, icon = "fa-solid fa-wine-glass" },
                }
            }
        }
    },
    ["gunstorelegion"] = {
        basketLocation = vector3(16.75, -1113.02, 29.8),
        checkoutLocation = vector3(22.4, -1106.88, 29.8),
        storeType = 'Gun', 
        zones = { 
            {
                label = "Armor",
                location = vector3(18.37, -1110.02, 29.8),
                items = {
                    { name = "armor", label = "Armor", price = 120, icon = "fa-solid fa-utensils" }, 
                    { name = "heavyarmor", label = "Heavy Armor", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Ammo",
                location = vector3(22.62, -1109.62, 29.8),
                items = {
                    { name = "ammo-45", label = ".45 ACP Ammo", price = 25, icon = "fa-solid fa-utensils" }, 
                    { name = "ammo-rifle", label = "Rifle Ammo", price = 45, icon = "fa-solid fa-utensils" },
                    { name = "ammo-shotgun", label = "Shotgun Ammo", price = 60, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Guns",
                location = vector3(20.06, -1106.0, 29.8),
                items = {
                    { name = "weapon_pistol", label = "Pistol", price = 450, icon = "fa-solid fa-utensils" }, 
                    { name = "weapon_assaultrifle", label = "Assault Rifle", price = 3600, icon = "fa-solid fa-utensils" },
                    { name = "weapon_pumpshotgun", label = "Pump Shotgun", price = 4500, icon = "fa-solid fa-utensils" }
                }
            }
        }          
    },
    ["gunstoreelrancho"] = {
        basketLocation = vector3(813.14, -2149.96, 29.62),
        checkoutLocation = vector3(809.56, -2157.68, 29.62),
        storeType = 'Gun', 
        zones = { 
            {
                label = "Armor",
                location = vector3(812.58, -2153.4, 29.62),
                items = {
                    { name = "armor", label = "Armor", price = 120, icon = "fa-solid fa-utensils" }, 
                    { name = "heavyarmor", label = "Heavy Armor", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Ammo",
                location = vector3(808.77, -2155.08, 29.62),
                items = {
                    { name = "ammo-45", label = ".45 ACP Ammo", price = 25, icon = "fa-solid fa-utensils" }, 
                    { name = "ammo-rifle", label = "Rifle Ammo", price = 45, icon = "fa-solid fa-utensils" },
                    { name = "ammo-shotgun", label = "Shotgun Ammo", price = 60, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Guns",
                location = vector3(812.23, -2157.68, 29.62),
                items = {
                    { name = "weapon_pistol", label = "Pistol", price = 450, icon = "fa-solid fa-utensils" }, 
                    { name = "weapon_assaultrifle", label = "Assault Rifle", price = 3600, icon = "fa-solid fa-utensils" },
                    { name = "weapon_pumpshotgun", label = "Pump Shotgun", price = 4500, icon = "fa-solid fa-utensils" }
                }
            }
        }          
    },
    ["gunstoresandy"] = {
        basketLocation = vector3(1696.86, 3752.68, 34.71),
        checkoutLocation = vector3(1693.7, 3760.53, 34.71),
        storeType = 'Gun', 
        zones = { 
            {
                label = "Armor",
                location = vector3(1694.86, 3755.35, 34.71),
                items = {
                    { name = "armor", label = "Armor", price = 120, icon = "fa-solid fa-utensils" }, 
                    { name = "heavyarmor", label = "Heavy Armor", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Ammo",
                location = vector3(1696.49, 3759.35, 34.71),
                items = {
                    { name = "ammo-45", label = ".45 ACP Ammo", price = 25, icon = "fa-solid fa-utensils" }, 
                    { name = "ammo-rifle", label = "Rifle Ammo", price = 45, icon = "fa-solid fa-utensils" },
                    { name = "ammo-shotgun", label = "Shotgun Ammo", price = 60, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Guns",
                location = vector3(1691.89, 3758.56, 34.71),
                items = {
                    { name = "weapon_pistol", label = "Pistol", price = 450, icon = "fa-solid fa-utensils" }, 
                    { name = "weapon_assaultrifle", label = "Assault Rifle", price = 3600, icon = "fa-solid fa-utensils" },
                    { name = "weapon_pumpshotgun", label = "Pump Shotgun", price = 4500, icon = "fa-solid fa-utensils" }
                }
            }
        }          
    },
    ["gunstorepaleto"] = {
        basketLocation = vector3(-327.32, 6076.57, 31.45),
        checkoutLocation = vector3(-330.21, 6084.49, 31.45),
        storeType = 'Gun', 
        zones = { 
            {
                label = "Armor",
                location = vector3(-329.26, 6079.28, 31.45),
                items = {
                    { name = "armor", label = "Armor", price = 120, icon = "fa-solid fa-utensils" }, 
                    { name = "heavyarmor", label = "Heavy Armor", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Ammo",
                location = vector3(-327.35, 6083.18, 31.45),
                items = {
                    { name = "ammo-45", label = ".45 ACP Ammo", price = 25, icon = "fa-solid fa-utensils" }, 
                    { name = "ammo-rifle", label = "Rifle Ammo", price = 45, icon = "fa-solid fa-utensils" },
                    { name = "ammo-shotgun", label = "Shotgun Ammo", price = 60, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Guns",
                location = vector3(-331.97, 6082.71, 31.45),
                items = {
                    { name = "weapon_pistol", label = "Pistol", price = 450, icon = "fa-solid fa-utensils" }, 
                    { name = "weapon_assaultrifle", label = "Assault Rifle", price = 3600, icon = "fa-solid fa-utensils" },
                    { name = "weapon_pumpshotgun", label = "Pump Shotgun", price = 4500, icon = "fa-solid fa-utensils" }
                }
            }
        }          
    },
    ["gunstorevinewood"] = {
        basketLocation = vector3(246.37, -44.64, 69.94),
        checkoutLocation = vector3(252.37, -50.59, 69.94),
        storeType = 'Gun', 
        zones = { 
            {
                label = "Armor",
                location = vector3(249.3, -46.36, 69.94),
                items = {
                    { name = "armor", label = "Armor", price = 120, icon = "fa-solid fa-utensils" }, 
                    { name = "heavyarmor", label = "Heavy Armor", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Ammo",
                location = vector3(249.43, -50.57, 69.94),
                items = {
                    { name = "ammo-45", label = ".45 ACP Ammo", price = 25, icon = "fa-solid fa-utensils" }, 
                    { name = "ammo-rifle", label = "Rifle Ammo", price = 45, icon = "fa-solid fa-utensils" },
                    { name = "ammo-shotgun", label = "Shotgun Ammo", price = 60, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Guns",
                location = vector3(253.21, -48.26, 69.94),
                items = {
                    { name = "weapon_pistol", label = "Pistol", price = 450, icon = "fa-solid fa-utensils" }, 
                    { name = "weapon_assaultrifle", label = "Assault Rifle", price = 3600, icon = "fa-solid fa-utensils" },
                    { name = "weapon_pumpshotgun", label = "Pump Shotgun", price = 4500, icon = "fa-solid fa-utensils" }
                }
            }
        }          
    },
    ["gunstoreroute15"] = {
        basketLocation = vector3(2570.96, 301.64, 108.73),
        checkoutLocation = vector3(2567.29, 293.95, 108.73),
        storeType = 'Gun', 
        zones = { 
            {
                label = "Armor",
                location = vector3(2570.31, 298.22, 108.73),
                items = {
                    { name = "armor", label = "Armor", price = 120, icon = "fa-solid fa-utensils" }, 
                    { name = "heavyarmor", label = "Heavy Armor", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Ammo",
                location = vector3(2566.44, 296.63, 108.73),
                items = {
                    { name = "ammo-45", label = ".45 ACP Ammo", price = 25, icon = "fa-solid fa-utensils" }, 
                    { name = "ammo-rifle", label = "Rifle Ammo", price = 45, icon = "fa-solid fa-utensils" },
                    { name = "ammo-shotgun", label = "Shotgun Ammo", price = 60, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Guns",
                location = vector3(2569.94, 293.95, 108.73),
                items = {
                    { name = "weapon_pistol", label = "Pistol", price = 450, icon = "fa-solid fa-utensils" }, 
                    { name = "weapon_assaultrifle", label = "Assault Rifle", price = 3600, icon = "fa-solid fa-utensils" },
                    { name = "weapon_pumpshotgun", label = "Pump Shotgun", price = 4500, icon = "fa-solid fa-utensils" }
                }
            }
        }          
    },
    ["gunstoreroute68"] = {
        basketLocation = vector3(-1115.17, 2691.0, 18.55),
        checkoutLocation = vector3(-1117.63, 2699.14, 18.55),
        storeType = 'Gun', 
        zones = { 
            {
                label = "Armor",
                location = vector3(-1116.84, 2693.83, 18.55),
                items = {
                    { name = "armor", label = "Armor", price = 120, icon = "fa-solid fa-utensils" }, 
                    { name = "heavyarmor", label = "Heavy Armor", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Ammo",
                location = vector3(-1115.07, 2697.74, 18.55),
                items = {
                    { name = "ammo-45", label = ".45 ACP Ammo", price = 25, icon = "fa-solid fa-utensils" }, 
                    { name = "ammo-rifle", label = "Rifle Ammo", price = 45, icon = "fa-solid fa-utensils" },
                    { name = "ammo-shotgun", label = "Shotgun Ammo", price = 60, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Guns",
                location = vector3(-1119.37, 2697.59, 18.55),
                items = {
                    { name = "weapon_pistol", label = "Pistol", price = 450, icon = "fa-solid fa-utensils" }, 
                    { name = "weapon_assaultrifle", label = "Assault Rifle", price = 3600, icon = "fa-solid fa-utensils" },
                    { name = "weapon_pumpshotgun", label = "Pump Shotgun", price = 4500, icon = "fa-solid fa-utensils" }
                }
            }
        }          
    },
    ["gunstorepopstreet"] = {
        basketLocation = vector3(845.39, -1026.17, 28.19),
        checkoutLocation = vector3(841.85, -1033.95, 28.19),
        storeType = 'Gun', 
        zones = { 
            {
                label = "Armor",
                location = vector3(844.85, -1029.7, 28.19),
                items = {
                    { name = "armor", label = "Armor", price = 120, icon = "fa-solid fa-utensils" }, 
                    { name = "heavyarmor", label = "Heavy Armor", price = 2, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Ammo",
                location = vector3(840.92, -1031.27, 28.19),
                items = {
                    { name = "ammo-45", label = ".45 ACP Ammo", price = 25, icon = "fa-solid fa-utensils" }, 
                    { name = "ammo-rifle", label = "Rifle Ammo", price = 45, icon = "fa-solid fa-utensils" },
                    { name = "ammo-shotgun", label = "Shotgun Ammo", price = 60, icon = "fa-solid fa-utensils" }
                }
            },
            {
                label = "Guns",
                location = vector3(844.3, -1033.94, 28.19),
                items = {
                    { name = "weapon_pistol", label = "Pistol", price = 450, icon = "fa-solid fa-utensils" }, 
                    { name = "weapon_assaultrifle", label = "Assault Rifle", price = 3600, icon = "fa-solid fa-utensils" },
                    { name = "weapon_pumpshotgun", label = "Pump Shotgun", price = 4500, icon = "fa-solid fa-utensils" }
                }
            }
        }          
    },

}
