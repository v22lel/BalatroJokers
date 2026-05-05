SMODS.Atlas({
    key = "j69",
    path = "j69.png",
    px = 71,
    py = 95,
})

SMODS.Joker {
    key = "j69",
    pos = { x = 0, y = 0 },                              --pos in spritesheet 0,0 for single sprites or the first sprite in the spritesheet.
    rarity = 3,                                          --rarity 1=common, 2=uncommen, 3=rare, 4=legendary
    cost = 9,                                            --cost to buy the joker in shops.
    blueprint_compat=true,                               --does joker work with blueprint.
    eternal_compat=true,                                 --can joker be eternal.
    unlocked = true,                                     --is joker unlocked by default.
    discovered = true,                                   --is joker discovered by default.
    atlas = "j69",

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                mult = 69,
            }
        end
    end
}