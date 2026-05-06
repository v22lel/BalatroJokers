SMODS.Atlas({
    key = "tarot_chain",
    path = "tarot_chain.png",
    px = 71,
    py = 95,
})

SMODS.Joker {
    key = "tarot_chain",
    pos = { x = 0, y = 0 },
    rarity = 3,
    cost = 10,
    blueprint_compat=true,
    eternal_compat=true,
    unlocked = true,
    discovered = true,
    atlas = "tarot_chain",

    config = {
        extra = {
            chance = 4
        }
    },

    loc_vars = function(self, info_queue, card)
        return { vars = { G.GAME.probabilities.normal, card.ability.extra.chance } }
    end,

    calculate = function(self, c, context)
        if context.using_consumeable and context.consumeable.ability.set == 'Tarot' then
            if pseudorandom('lucky_charm') < G.GAME.probabilities.normal / c.ability.extra.chance then
                local random_tarot = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil, 't_chain')
                    
                random_tarot:add_to_deck()
                G.consumeables:emplace(random_tarot)

                return {
                    message = "Chained!",
                    colour = G.C.TAROT,
                    card = c
                }
            end
        end
    end
}