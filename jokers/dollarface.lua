SMODS.Atlas({
    key = "dollarface",
    path = "dollarface.png",
    px = 71,
    py = 95,
})

SMODS.Joker {
    key = "dollarface",
    pos = { x = 0, y = 0 },
    rarity = 2,
    cost = 6,
    blueprint_compat=true,
    eternal_compat=true,
    unlocked = true,
    discovered = true,
    atlas = "dollarface",

    config = {
        extra = {
            money = 2
        }
    },

    calculate = function(self, c, context)
        if context.individual and context.other_card and context.cardarea == G.play then
            local card = context.other_card
            local val = card.base.value
            local returnMoney = c.ability.extra.money
            if val == 'Jack' or val == 'Queen' or val == 'King' then
                returnMoney = -returnMoney
            end
            return {
                dollars = returnMoney
            }
        end
    end
}