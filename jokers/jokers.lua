
-- you can have shared helper functions
function shakecard(self)
    G.E_MANAGER:add_event(Event({
        func = function()
            self:juice_up(0.5, 0.5)
            return true
        end
    }))
end

--function return_JokerValues() -- not used, just here to demonstrate how you could return values from a joker
--    if context.joker_main and context.cardarea == G.jokers then
--        return {
--            chips = card.ability.extra.chips,       -- these are the 3 possible scoring effects any joker can return.
--            mult = card.ability.extra.mult,         -- adds mult (+)
--            x_mult = card.ability.extra.x_mult,     -- multiplies existing mult (*)
--            card = self,                            -- under which card to show the message
--            colour = G.C.CHIPS,                     -- colour of the message, Balatro has some predefined colours, (Balatro/globals.lua)
--            message = localize('k_upgrade_ex'),     -- this is the message that will be shown under the card when it triggers.
--            extra = { focus = self, message = localize('k_upgrade_ex') }, -- another way to show messages, not sure what's the difference.
--        }
--    end
--end

