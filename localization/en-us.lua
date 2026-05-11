return {
    descriptions = {
        Joker = {
            j_bj_j69 = {
                name = { "Six Nine" },
                text = { "Adds the funny number", "to {C:mult}Mult{}!" }
            },
            j_bj_shotgun = {
                name = { "Shotgun" },
                text = {
                    "For every scoring card,",
                    "permanently add its chips value to chips",
                    "and also subtract it from the sell value.",
                    "Then destroy the scored playing card.",
                    "{C:inactive}Currently: {C:chips}#1#{} chips"
                }
            },
            j_bj_dollarface = {
                name = { "Dollarface" },
                text = {
                    "Every scoring number card",
                    "gives {C:money}+2{} dollars,",
                    "but face cards give {C:money}-2{} dollars."
                }
            },
            j_bj_mirror = {
                name = { "Card Mirror" },
                text = {
                    "When played hand is a pair",
                    "convert the right card into",
                    "the left card."
                }
            },
            j_bj_tarot_chain = {
                name = { "Tarot Chain" },
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "create a {C:tarot}tarot{} card, when",
                    "a {C:tarot}tarot{} card is used."
                }
            },
            j_bj_money_buys_jokers = {
                name = { "Money buys...Jokers!" },
                text = {
                    "When blind is selected,",
                    "destroy the rightmost joker",
                    "and if its sell cost is at least {C:money}#1#${},",
                    "revive it as {C:dark_edition}negative{}"
                }
            },
            j_bj_pay2win = {
                name = { "Pay 2 Win" },
                text = {
                    "{X:mult,C:white}x#1#{} mult, but costs",
                    "{C:money}#2#${} per hand."
                }
            },
            j_bj_wardrobe = {
                name = { "Wardrobe" },
                text = {
                    "Each unique scoring suit",
                    "gives {C:chips}+#1#{} Chips."
                }
            },
            j_bj_evencredit = {
                name = { "Even Credit" },
                text = {
                    "{X:mult,C:white}x#1#{} mult when dollars are even,",
                    "{X:mult,C:white}x#2#{} mult when dollars are odd"
                }
            },
            j_bj_balancer = {
                name = { "Balancer" },
                text = {
                    "If scored chips exceed mult,",
                    "{C:purple}balance{} them."
                }
            }
        }
    }
}