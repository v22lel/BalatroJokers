--- GLOBALS

G.C.BJ = {
    RED = HEX("FF0000"),
    BLACK = HEX("000000"),
    BLUE = HEX("0000FF"),
    GREEN = HEX("00FF00"),
    WHITE = HEX("FFFFFF"),
    TRANSPARENT = HEX("00000000"),
}

-- Hooks

local loc_colour_ref = loc_colour
function loc_colour(_c, _default)
    if not G.ARGS.LOC_COLOURS then
        loc_colour_ref()
    end
    G.ARGS.LOC_COLOURS.bj_red = G.C.BJ.RED
    G.ARGS.LOC_COLOURS.bj_black = G.C.BJ.BLACK
    G.ARGS.LOC_COLOURS.bj_blue = G.C.BJ.BLUE
    G.ARGS.LOC_COLOURS.bj_green = G.C.BJ.GREEN
    G.ARGS.LOC_COLOURS.bj_white = G.C.BJ.WHITE
    G.ARGS.LOC_COLOURS.bj_transparent = G.C.BJ.TRANSPARENT
    return loc_colour_ref(_c, _default)
end