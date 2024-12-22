# Dependencies

[ox_lib](https://github.com/overextended/ox_lib)

[ox_target](https://github.com/overextended/ox_target) or [qb-target](https://github.com/qbcore-framework/qb-target)

[ox_inventory](https://github.com/overextended/ox_inventory) or [qb-inventory](https://github.com/qbcore-framework/qb-inventory)

[BZZZ shopping basket prop](https://bzzz.tebex.io/package/5580495)

any kind of emote menu

# Instructions

add these to your emote menu

**RP Emotes**


 ["market"] = {
        "missfbi4prepp1",
        AnimationOptions = {
            Prop = "bzzz_prop_shop_basket_a",
            PropBone = 57005,
            PropPlacement = {
                0.34, -0.25, -0.24, -146.0, 115.0, 19.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
["market"] = {
        "missfbi4prepp1",
        AnimationOptions = {
            Prop = "bzzz_prop_shop_basket_b",
            PropBone = 57005,
            PropPlacement = {
                0.34, -0.25, -0.24, -146.0, 115.0, 19.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },


**Scully Emotes**

{
            Label = 'Market 1',
            Command = 'market',
            Animation = 'idle',
            Dictionary = 'missfbi4prepp1',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'bzzz_prop_shop_basket_a',
                        Placement = {
                            vector3(0.34, -0.25, -0.24),
                            vector3(-146.0, 115.0, 19.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Market 2',
            Command = 'market2',
            Animation = 'idle',
            Dictionary = 'missfbi4prepp1',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'bzzz_prop_shop_basket_b',
                        Placement = {
                            vector3(0.34, -0.25, -0.24),
                            vector3(-146.0, 115.0, 19.0),
                        },
                    },
                },
            },
        },

        


if you perfer the item images for stuff instead of icons replace line 184 in client with this: 

icon = "nui://ox_inventory/web/images/"..item.name..".png",

# Links
[preview](https://youtu.be/u3QC1gm0j6M)

[support](https://dsc.gg/tropicgalxy)
