SMODS.Atlas({
    key = "pay2win",
    path = "pay2win.png",
    px = 71,
    py = 95,
})

SMODS.Joker {
    key = "pay2win",
    pos = { x = 0, y = 0 },
    rarity = 3,
    cost = 10,
    blueprint_compat=false,
    eternal_compat=true,
    unlocked = true,
    discovered = true,
    atlas = "pay2win",

    config = {
        extra = {
            xmult = 5,
            cost = 5
        }
    },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.cost } }
    end,

    calculate = function(self, c, context)
        if context.joker_main and context.cardarea == G.jokers then
            return {
                dollars = -c.ability.extra.cost,
                xmult = c.ability.extra.xmult
            }
        end
    end
}