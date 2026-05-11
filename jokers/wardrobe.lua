SMODS.Atlas({
    key = "wardrobe",
    path = "wardrobe.png",
    px = 71,
    py = 95,
})

SMODS.Joker {
    key = "wardrobe",
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 5,
    blueprint_compat=true,
    eternal_compat=true,
    unlocked = true,
    discovered = true,
    atlas = "wardrobe",

    config = {
        extra = {
            seen = {},
            chips = 50
        }
    },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,

    calculate = function(self, c, context)
        if context.before then
            c.ability.extra.seen = {}
        end
        if context.individual and context.other_card and context.cardarea == G.play then
            local suit = context.other_card.base.suit
            if not c.ability.extra.seen[suit] then
                c.ability.extra.seen[suit] = true
                return {
                    chips = c.ability.extra.chips,
                    colour = G.C.CHIPS,
                    message = "Unique!"
                }
            end
        end
    end
}