local M = {}

M.ROW_X            = { 0.2, 0.45, 0.7 }
M.SPAWN_Y          = -0.075
M.FLOOR_Y          = 0.825
M.PLAYER_Y         = 0.8875
M.BLOCK_W          = 0.1
M.BLOCK_H          = 0.075
M.VISUAL_X_SPEED   = 0.2
M.DROID_SPEED_INIT = 0.0001

M.DOT_COLORS = {
    top    = { r=255, g=220, b=50  },
    bottom = { r=50,  g=255, b=150 },
    left   = { r=50,  g=150, b=255 },
    right  = { r=255, g=100, b=200 },
}
M.DOT_SIDES = { 'top', 'bottom', 'left', 'right' }

function M.shuffle_sides ()
    local t = { table.unpack(M.DOT_SIDES) }
    for i = #t, 2, -1 do
        local j = math.random(i)
        t[i], t[j] = t[j], t[i]
    end
    return t
end

function M.fmt_time (ms)
    local total_s = math.floor(ms / 1000)
    local mins    = math.floor(total_s / 60)
    local secs    = total_s % 60
    local mm      = mins < 10 and ("0" .. mins) or ("" .. mins)
    local ss      = secs < 10 and ("0" .. secs) or ("" .. secs)
    return mm .. ":" .. ss
end

return M
