SMODS.Atlas({
    key = "shotgun",
    path = "shotgun.png",
    px = 71,
    py = 95,
})

SMODS.Joker {
    key = "shotgun",
    pos = { x = 0, y = 0 },
    rarity = 2,
    cost = 6.9,
    blueprint_compat = false,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = "shotgun",

    config = {
        extra = {
            chips = 0
        }
    },

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips
            }
        }
    end,

    calculate = function(self, c, context)
        if context.destroy_card and context.cardarea == G.play then
            local card = context.destroy_card

            local chips = card:get_chip_bonus() or 0

            c.ability.extra.chips = (c.ability.extra.chips or 0) + chips
            c.sell_cost = c.sell_cost - chips

            return {
                extra = {focus = c, message = localize('k_upgrade_ex')},
                colour = G.C.CHIPS,
                remove = true
            }
        end

        if context.cardarea == G.jokers and context.joker_main then
            return {
                chips = c.ability.extra.chips,
                colour = G.C.CHIPS
            }
        end
    end
}