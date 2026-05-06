SMODS.Atlas({
    key = "mirror",
    path = "mirror.png",
    px = 71,
    py = 95,
})

SMODS.Joker {
    key = "mirror",
    pos = { x = 0, y = 0 },
    rarity = 3,
    cost = 10,
    blueprint_compat=false,
    eternal_compat=true,
    unlocked = true,
    discovered = true,
    atlas = "mirror",

    calculate = function(self, c, context)
        if context.before and context.scoring_name == "Pair" then
            local cards = context.scoring_hand

            if cards and #cards == 2 then
                local left = cards[1]
                local right = cards[2]

                right:set_base(left.config.card)
                right:set_ability(left.config.center)
                right:set_edition(left.edition, true, true)
                right:set_seal(left.seal, true, true)

                left:juice_up()
                right:juice_up()

                return {
                    message = "Mirrored!",
                    colour = G.C.CHIPS,
                    card = card
                }
            end
        end
    end
}