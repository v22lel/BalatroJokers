SMODS.Atlas({
    key = "balancer",
    path = "balancer.png",
    px = 71,
    py = 95,
})

SMODS.Joker {
    key = "balancer",
    pos = { x = 0, y = 0 },
    rarity = 2,
    cost = 7,
    blueprint_compat=false,
    eternal_compat=true,
    unlocked = true,
    discovered = true,
    atlas = "balancer",

    calculate = function(self, c, context)
        if context.post_joker_main then
            local total_chips = hand_chips
            local total_mult = mult
            
            local balanced = (total_chips + total_mult) / 2
            
            hand_chips = balanced
            mult = balanced
            
            return {
                message = "Balanced!",
                colour = G.C.IMPORTANT
            }
        end
    end
}