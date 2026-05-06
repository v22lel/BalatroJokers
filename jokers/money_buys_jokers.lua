SMODS.Atlas({
    key = "money_buys_jokers",
    path = "money_buys_jokers.png",
    px = 71,
    py = 95,
})

SMODS.Joker {
    key = "money_buys_jokers",
    pos = { x = 0, y = 0 },
    rarity = 3,
    cost = 10,
    blueprint_compat=false,
    eternal_compat=true,
    unlocked = true,
    discovered = true,
    atlas = "money_buys_jokers",

    config = {
        extra = {
            minCost = 15
        }
    },

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
        return { vars = { card.ability.extra.minCost } }
    end,

    calculate = function(self, c, context)
        if context.setting_blind and not c.debuff then
            local target = nil
            
            for i = #G.jokers.cards, 1, -1 do
                local j = G.jokers.cards[i]
                if j ~= card then
                    target = j
                    break
                end
            end

            if target then
                local isExpensiveEnough = target.sell_cost >= c.ability.extra.minCost

                if isExpensiveEnough then
                    local new_card = copy_card(target, nil, nil, nil, nil)
                    new_card:set_edition({negative = true}, true, true)

                    target:start_dissolve()

                    new_card:add_to_deck()
                    G.jokers:emplace(new_card)

                    return {
                        message = "Revived!",
                        colour = G.C.DARK_EDITION,
                        card = c
                    }
                else
                    target:start_dissolve()
                end
            end
        end
    end
}