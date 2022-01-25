--[[

     ijc-cyberpunk theme for awm

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility
local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/cyberpunk"
theme.wallpaper                                 = theme.dir .. "/wall.jpg"
theme.font                                      = "Noto Sans Mono 12"
theme.fg_normal                                 = "#23D5D3" -- Main Text
theme.fg_focus                                  = "#EA00D9" -- Highlighted Text #EA6F81
theme.fg_urgent                                 = "#0ABDC6" -- Urgent Text
theme.bg_normal                                 = "#000B1E" -- Window Unfocused Background
theme.bg_focus                                  = "#091833" -- Window Focused Background
theme.bg_urgent                                 = "#3C4B66" -- Window Bright Background
theme.border_width                              = dpi(2)
theme.border_normal                             = "#2678ba" -- Unfocused Window Borders
theme.border_focus                              = "#be32f1" -- Focused Window Borders
theme.border_marked                             = "#CC9393" -- Marked? Window Borders
theme.tasklist_fg_focus				= "#db39af" -- Tasklist Foreground Text Color yellow: #FCEC0C pink: #db39af purple:#be32f1
theme.tasklist_bg_focus                         = theme.bg_normal
theme.tasklist_bg_normal			= theme.bg_normal
theme.dmenu_fg_focus				= theme.fg_focus -- Dmenu Foreground Text Color yellow: #FCEC0C pink: #db39af purple:#be32f1
theme.dmenu_bg_focus                            = "#091833"
theme.dmenu_fg_normal				= theme.fg_normal -- Dmenu Foreground Text Color yellow: #FCEC0C pink: #db39af purple:#be32f1
theme.dmenu_bg_normal                           = "#000B1E"
theme.titlebar_bg_focus                         = "#000B1EFF"
theme.titlebar_bg_normal                        = "#000B1EFF"
theme.titlebar_fg_focus                         = theme.fg_focus
theme.bg_systray                                = theme.bg_focus
theme.menu_height                               = dpi(20)
theme.menu_width                                = dpi(180)
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.taglist_fg_focus				            = theme.tasklist_fg_focus
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.layout_tile                               = theme.dir .. "/awesome-icons/align-left.svg"
theme.layout_tileleft                           = theme.dir .. "/awesome-icons/align-left.svg"
theme.layout_tilebottom                         = theme.dir .. "/awesome-icons/align-justify.svg"
theme.layout_tiletop                            = theme.dir .. "/awesome-icons/align-center.svg"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/awesome-icons/window-maximize.svg"
theme.layout_fullscreen                         = theme.dir .. "/awesome-icons/window-maximize.svg"
theme.layout_magnifier                          = theme.dir .. "/awesome-icons/search.svg"
theme.layout_floating                           = theme.dir .. "/awesome-icons/window-restore.svg"
theme.widget_ac                                 = theme.dir .. "/awesome-icons/plug.svg"
theme.widget_battery                            = theme.dir .. "/awesome-icons/battery-three-quarters.svg"
theme.widget_battery_low                        = theme.dir .. "/awesome-icons/battery-quarter.svg"
theme.widget_battery_empty                      = theme.dir .. "/awesome-icons/battery-empty.svg"
theme.widget_mem                                = theme.dir .. "/awesome-icons/memory.svg"
theme.widget_cpu                                = theme.dir .. "/awesome-icons/microchip.svg"
theme.widget_temp                               = theme.dir .. "/awesome-icons/thermometer-quarter.svg"
theme.widget_net                                = theme.dir .. "/awesome-icons/satellite-dish.svg"
theme.widget_clock                              = theme.dir .. "/awesome-icons/calendar-alt.svg"
theme.widget_hdd                                = theme.dir .. "/awesome-icons/server.svg"
theme.widget_music                              = theme.dir .. "/awesome-icons/music.svg"
theme.widget_music_on                           = theme.dir .. "/awesome-icons/music.svg"
theme.widget_vol                                = theme.dir .. "/awesome-icons/volume-up.svg"
theme.widget_vol_low                            = theme.dir .. "/awesome-icons/volume-down.svg"
theme.widget_vol_no                             = theme.dir .. "/awesome-icons/volume-off.svg"
theme.widget_vol_mute                           = theme.dir .. "/awesome-icons/volume-mute.svg"
theme.widget_mail                               = theme.dir .. "/awesome-icons/envelope.svg"
theme.widget_mail_on                            = theme.dir .. "/awesome-icons/envelope.svg"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = dpi(4)
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"
-- New Stuff:
theme.icon_margin                               = 10;

local markup = lain.util.markup
local separators = lain.util.separators

local keyboardlayout = awful.widget.keyboardlayout:new()

-- Textclock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
local clock = awful.widget.watch(
    "date +'%I:%M:%S %p'", 1,
    function(widget, stdout)
        widget:set_markup(" " .. markup.font(theme.font, stdout))
    end
)

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { clock, clockicon },
    notification_preset = {
        font = "Noto Sans Mono 12",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})

-- Mail IMAP check
local mailicon = wibox.widget.imagebox(theme.widget_mail)
mailicon:buttons(my_table.join(awful.button({ }, 1, function () awful.spawn(mail) end)))
theme.mail = lain.widget.imap({
    timeout  = 300,
    server   = "imap.gmail.com",
    mail     = "ian.cuninghame@gmail.com",
    password = "$Canada100",
    settings = function()
        if mailcount > 0 then
            widget:set_markup(markup.font(theme.font, "" .. mailcount .. " "))
            mailicon:set_image(theme.widget_mail_on)
        else
            widget:set_text("")
            mailicon:set_image(theme.widget_mail)
        end
    end
})

-- MPD
local musicplr = awful.util.terminal .. " -title Music -e ncmpcpp"
local mpdicon = wibox.widget.imagebox(theme.widget_music)
mpdicon:buttons(my_table.join(
    awful.button({ "Mod4" }, 1, function () awful.spawn(musicplr) end),
    awful.button({ }, 1, function ()
        os.execute("mpc prev")
        theme.mpd.update()
    end),
    awful.button({ }, 2, function ()
        os.execute("mpc toggle")
        theme.mpd.update()
    end),
    awful.button({ }, 3, function ()
        os.execute("mpc next")
        theme.mpd.update()
    end)))
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            artist = " " .. mpd_now.artist .. " "
            title  = mpd_now.title  .. " "
            mpdicon:set_image(theme.widget_music_on)
        elseif mpd_now.state == "pause" then
            artist = " mpd "
            title  = "paused "
        else
            artist = ""
            title  = ""
            mpdicon:set_image(theme.widget_music)
        end

        widget:set_markup(markup.font(theme.font, markup("#EA6F81", artist) .. title))
    end
})

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.font(theme.font, "" .. mem_now.used .. "MB "))
    end
})

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font, "" .. cpu_now.usage .. "% "))
    end
})

-- Coretemp
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font, "" .. coretemp_now .. "°C "))
    end
})

-- / fs
local fsicon = wibox.widget.imagebox(theme.widget_hdd)
theme.fs = lain.widget.fs({
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = "Terminus 10" },
    settings = function()
        widget:set_markup(markup.font(theme.font, "" .. fs_now["/"].percentage .. "% "))
    end
})

-- Battery
local baticon = wibox.widget.imagebox(theme.widget_battery)
local bat = lain.widget.bat({
    settings = function()
        if bat_now.status and bat_now.status ~= "N/A" then
            if bat_now.ac_status == 1 then
                baticon:set_image(theme.widget_ac)
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 5 then
                baticon:set_image(theme.widget_battery_empty)
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 25 then
                baticon:set_image(theme.widget_battery_low)
            else
                baticon:set_image(theme.widget_battery)
            end
            widget:set_markup(markup.font(theme.font, "" .. bat_now.perc .. "% "))
        else
            widget:set_markup(markup.font(theme.font, "AC "))
            baticon:set_image(theme.widget_ac)
        end
    end
})

-- PulseAudio Volume
--[[ local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.pulse({
    settings = function()
        if volume_now.status == "off" then
            volicon:set_image(theme.widget_vol_mute)
        elseif tonumber(volume_now.level) == 0 then
            volicon:set_image(theme.widget_vol_no)
        elseif tonumber(volume_now.level) <= 50 then
            volicon:set_image(theme.widget_vol_low)
        else
            volicon:set_image(theme.widget_vol)
        end

        widget:set_markup(markup.font(theme.font, "" .. volume_now.level .. "% "))
    end
}) --]]


-- ALSA volume
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsa({
    settings = function()
        if volume_now.status == "off" then
            volicon:set_image(theme.widget_vol_mute)
        elseif tonumber(volume_now.level) == 0 then
            volicon:set_image(theme.widget_vol_no)
        elseif tonumber(volume_now.level) <= 50 then
            volicon:set_image(theme.widget_vol_low)
        else
            volicon:set_image(theme.widget_vol)
        end

        widget:set_markup(markup.font(theme.font, "" .. volume_now.level .. "% "))
    end
})
theme.volume.widget:buttons(awful.util.table.join(
                               awful.button({}, 4, function ()
                                     awful.util.spawn("amixer set Master 1%+")
                                     theme.volume.update()
                               end),
                               awful.button({}, 5, function ()
                                     awful.util.spawn("amixer set Master 1%-")
                                     theme.volume.update()
                               end)
))

-- Net
local neticon = wibox.widget.imagebox(theme.widget_net)
local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.font(theme.font,
                          markup(theme.fg_normal, "" .. string.format("%06.1f", net_now.received) .. " ⇃")
                          .. "" ..
                          markup(theme.fg_normal, "↾ " .. string.format("%06.1f", net_now.sent) .. " ")))
    end
})
-- Separators
local spr     = wibox.widget.textbox(' ')
local arrl_dl = separators.arrow_left(theme.bg_focus, "alpha")
local arrl_ld = separators.arrow_left("alpha", theme.bg_focus)

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    -- s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)
    s.mytasklist = awful.widget.tasklist {
        screen = s,
        filter = awful.widget.tasklist.filter.currenttags,
        buttons = awful.util.tasklist_buttons,
        layout = {
            layout  = wibox.layout.flex.horizontal
        },
        style = {
            align = "center",
        },
    }
    -- Create the systray
    s.mysystray = wibox.container.background(wibox.container.margin(wibox.widget.systray(), theme.icon_margin/2, theme.icon_margin, theme.icon_margin/2, theme.icon_margin/2, nil, true), theme.bg_focus)
    s.mysystray.visible = false

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(24), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            spr,
            s.mytaglist,
            s.mypromptbox,
            spr,
        },
	    s.mytasklist, -- Middle widget
	    { -- Right widgets
        layout = wibox.layout.fixed.horizontal,
            --wibox.container.background(mysystray, theme.bg_focus),
            s.mysystray,
            --wibox.widget.systray(),
            --keyboardlayout,
        spr,
        --arrl_ld,
	        --wibox.container.background(spr, theme.bg_focus),
            --wibox.container.background(wibox.container.margin(mpdicon, theme.icon_margin, theme.icon_margin, theme.icon_margin, theme.icon_margin), theme.bg_focus),
            --wibox.container.background(theme.mpd.widget, theme.bg_focus),
	        --wibox.container.background(spr, theme.bg_focus),
        --arrl_dl,
	    --spr,
--        wibox.container.background(spr, theme.bg_focus),
--            wibox.container.background(wibox.container.margin(mailicon, theme.icon_margin, theme.icon_margin*2, theme.icon_margin, theme.icon_margin), theme.bg_focus),
--            wibox.container.background(theme.mail.widget, theme.bg_focus),
        --arrl_dl,
	    spr,
            wibox.container.background(wibox.container.margin(volicon, theme.icon_margin, theme.icon_margin*2, theme.icon_margin, theme.icon_margin), theme.bg_focus),
            wibox.container.background(theme.volume.widget, theme.bg_focus),
	    spr,
        --arrl_ld,
            wibox.container.background(wibox.container.margin(memicon, theme.icon_margin, theme.icon_margin*2, theme.icon_margin, theme.icon_margin), theme.bg_focus),
            wibox.container.background(mem.widget, theme.bg_focus),
	    spr,
        --arrl_ld,
	        wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(wibox.container.margin(cpuicon, theme.icon_margin, theme.icon_margin*2, theme.icon_margin, theme.icon_margin), theme.bg_focus),
            wibox.container.background(cpu.widget, theme.bg_focus),
	        wibox.container.background(spr, theme.bg_focus),
        --arrl_dl,
	    spr,
            wibox.container.background(wibox.container.margin(tempicon, theme.icon_margin, theme.icon_margin*2, theme.icon_margin, theme.icon_margin), theme.bg_focus),
            wibox.container.background(temp.widget, theme.bg_focus),
	    spr,
        --arrl_ld,
            --wibox.container.background(fsicon, theme.bg_focus),
            --wibox.container.background(theme.fs.widget, theme.bg_focus),
        --arrl_dl,
	    --spr,
            wibox.container.background(wibox.container.margin(baticon, theme.icon_margin, theme.icon_margin*2, theme.icon_margin, theme.icon_margin), theme.bg_focus),
            wibox.container.background(bat.widget, theme.bg_focus),
	    spr,
        --arrl_ld,
            wibox.container.background(wibox.container.margin(neticon, theme.icon_margin, theme.icon_margin*2, theme.icon_margin, theme.icon_margin), theme.bg_focus),
            wibox.container.background(net.widget, theme.bg_focus),
        --arrl_dl,
	    spr,
            wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(wibox.container.margin(clockicon, theme.icon_margin, theme.icon_margin*2, theme.icon_margin, theme.icon_margin), theme.bg_focus),
            wibox.container.background(clock, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
        spr,
        --arrl_ld,
	        wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(wibox.container.margin(s.mylayoutbox, theme.icon_margin, theme.icon_margin, theme.icon_margin, theme.icon_margin), theme.bg_focus),
	        wibox.container.background(spr, theme.bg_focus),
        },
    }
end

return theme
