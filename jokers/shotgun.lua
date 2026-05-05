SMODS.Atlas({
    key = "shotgun",
    path = "shotgun.png",
    px = 71,
    py = 95,
})

SMODS.Joker {
    key = "shotgun",
    pos = { x = 0, y = 0 },                              --pos in spritesheet 0,0 for single sprites or the first sprite in the spritesheet.
    rarity = 2,                                          --rarity 1=common, 2=uncommen, 3=rare, 4=legendary
    cost = 6.9,                                            --cost to buy the joker in shops.
    blueprint_compat=false,                               --does joker work with blueprint.
    eternal_compat=true,                                 --can joker be eternal.
    unlocked = true,                                     --is joker unlocked by default.
    discovered = true,                                   --is joker discovered by default.
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
            },
            key = self.key
        }
    end,

    calculate = function(self, c, context)
        if context.individual and context.other_card and context.cardarea == G.play then
            local card = context.other_card

            local chips = card:get_chip_bonus() or 0

            c.ability.extra.chips = (c.ability.extra.chips or 0) + chips
            c.sell_cost = c.sell_cost - chips;

            card:start_dissolve();

            return {
                extra = {focus = card, message = localize('k_upgrade_ex')},
                card = c,
                colour = G.C.CHIPS
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