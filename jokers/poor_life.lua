SMODS.Atlas({
    key = "poor_life",
    path = "poor_life.png",
    px = 71,
    py = 95,
})

SMODS.Joker {
    key = "poor_life",
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 10,
    blueprint_compat=false,
    eternal_compat=true,
    unlocked = true,
    discovered = true,
    atlas = "poor_life",

    config = {
        extra = {
            xmult = 3
        }
    }

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,

    calculate = function(self, c, context)
        if context.joker_main and context.cardarea == G.jokers then
            local xmult = 1
            if G.dollars < 0 then
                xmult = c.ability.extra.xmult
            end
            return {
                xmult = xmult
            }
        end
    end
}