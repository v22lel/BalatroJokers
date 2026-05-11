SMODS.Atlas({
    key = "evencredit",
    path = "evencredit.png",
    px = 71,
    py = 95,
})

SMODS.Joker {
    key = "evencredit",
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 5,
    blueprint_compat=true,
    eternal_compat=true,
    unlocked = true,
    discovered = true,
    atlas = "evencredit",

    config = {
        extra = {
            xmultEven = 2,
            xmultOdd = 0.5
        }
    },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmultEven, card.ability.extra.xmultOdd } }
    end,

    calculate = function(self, c, context)
        if context.joker_main then
            -- Ensure we are looking at an integer
            local currDollars = tonumber(G.GAME.dollars) or 0
            local isEven = (currDollars % 2 == 0)
            
            print("Dollars:", currDollars, "IsEven:", isEven)

            if isEven then
                return {
                    message = "Even :)",
                    xmult = c.ability.extra.xmultEven,
                    colour = G.C.MULT
                }
            else
                return {
                    message = "Odd :(",
                    xmult = c.ability.extra.xmultOdd,
                    colour = G.C.MULT
                }
            end
        end
    end
}