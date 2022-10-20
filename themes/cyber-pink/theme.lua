--[[

    cyberpunk theme for awm

    author: ijc

    Palette:
     Darkest Blue:       #000B19
     Darker Blue:        #000B1E
     Dark Blue:          #091833
     Cyber Blue:         #23D5D3
     Cyber Pink:         #ED1E79
     Cyber Red:          #FF4A57
     Cyber Yellow:       #EBE702

--]]

local gears = require("gears")
local lain = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi = require("beautiful.xresources").apply_dpi

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme = {}
theme.dir = os.getenv("HOME") .. "/.config/awesome/themes/cyber-pink"
theme.wallpaper = theme.dir .. "/wall.jpg"
theme.font = "Noto Sans Mono 12"
theme.fg_normal = "#23D5D3" -- Main Text 				                    (Cyber Blue)
theme.fg_focus = "#ED1E79" -- Highlighted Text			                    (Cyber Pink)
theme.fg_urgent = "#FF4A57" -- Urgent Text				                    (Cyber Red)
theme.bg_normal = "#000B19" -- Window Unfocused Background		            (Darkest Blue)
theme.bg_focus = "#000B1E" -- Window Focused Background		                (Darker Blue)
theme.bg_urgent = "#091833" -- Window Bright Background		                (Dark Blue)
theme.border_width = dpi(0.5) -- Border with, px scaled w/ dpi
theme.border_normal = "#23D5D3" -- Unfocused Window Borders		            (Cyber Blue)
theme.border_focus = "#ED1E79" -- Focused Window Borders		            (Cyber Pink)
theme.border_marked = "#FF4A57" -- Marked? Window Borders		            (Cyber Red)
theme.tasklist_fg_focus = "#ED1E79" -- Tasklist Foreground Text Color	    (Cyber Pink)
theme.tasklist_bg_focus = theme.bg_normal -- Tasklist Focused BG Color		(Darkest Blue)
theme.tasklist_bg_normal = theme.bg_normal -- Tasklist Normal BG Color		(Darkest Blue)
theme.dmenu_fg_focus = theme.fg_focus -- Dmenu Highlighted Item Txt color	(Cyber Pink)
theme.dmenu_bg_focus = theme.bg_focus -- Dmenu Highlighted Item BG Color	(Darker Blue)
theme.dmenu_fg_normal = theme.fg_normal -- Dmenu Text Color			        (Cyber Blue)
theme.dmenu_bg_normal = theme.bg_normal -- Dmenu BG Color			        (Darkest Blue)
theme.titlebar_bg_focus = theme.bg_normal -- Titlebar Focused BG Color		(Darkest Blue)
theme.titlebar_bg_normal = theme.bg_normal -- Titlebar Normal BG Color		(Darkest Blue)
theme.titlebar_fg_focus = theme.fg_focus -- Titlebar Focused Txt Color		(Cyber Blue)
theme.bg_systray = theme.bg_focus -- BG Color for Systray			(Darker Blue)
theme.menu_height = dpi(20) -- Height of Right Click Menu
theme.menu_width = dpi(180) -- Width of Right Click Menu
theme.menu_submenu_icon = theme.dir .. "/icons/submenu.png"
theme.taglist_fg_focus = theme.tasklist_fg_focus
theme.taglist_squares_sel = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel = theme.dir .. "/icons/square_unsel.png"
theme.layout_tile = theme.dir .. "/awesome-icons/align-left.svg"
theme.layout_tileleft = theme.dir .. "/awesome-icons/align-left.svg"
theme.layout_tilebottom = theme.dir .. "/awesome-icons/align-justify.svg"
theme.layout_tiletop = theme.dir .. "/awesome-icons/align-center.svg"
theme.layout_fairv = theme.dir .. "/icons/fairv.png"
theme.layout_fairh = theme.dir .. "/icons/fairh.png"
theme.layout_spiral = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle = theme.dir .. "/icons/dwindle.png"
theme.layout_max = theme.dir .. "/awesome-icons/window-maximize.svg"
theme.layout_fullscreen = theme.dir .. "/awesome-icons/window-maximize.svg"
theme.layout_magnifier = theme.dir .. "/awesome-icons/search.svg"
theme.layout_floating = theme.dir .. "/awesome-icons/window-restore.svg"
theme.widget_ac = theme.dir .. "/awesome-icons/plug.svg"
theme.widget_battery = theme.dir .. "/awesome-icons/battery-full.svg"
theme.widget_battery_0 = theme.dir .. "/awesome-icons/battery-empty.svg"
theme.widget_battery_25 = theme.dir .. "/awesome-icons/battery-quarter.svg"
theme.widget_battery_50 = theme.dir .. "/awesome-icons/battery-.svg"
theme.widget_battery_75 = theme.dir .. "/awesome-icons/battery-empty.svg"
theme.widget_mem = theme.dir .. "/awesome-icons/memory.svg"
theme.widget_cpu = theme.dir .. "/awesome-icons/microchip.svg"
theme.widget_temp = theme.dir .. "/awesome-icons/thermometer-full.svg"
theme.widget_temp_0 = theme.dir .. "/awesome-icons/thermometer-empty.svg"
theme.widget_temp_25 = theme.dir .. "/awesome-icons/thermometer-quarter.svg"
theme.widget_temp_50 = theme.dir .. "/awesome-icons/thermometer-half.svg"
theme.widget_temp_75 = theme.dir .. "/awesome-icons/thermometer-three-quarters.svg"
theme.widget_net = theme.dir .. "/awesome-icons/satellite-dish.svg"
theme.widget_clock = theme.dir .. "/awesome-icons/calendar-alt.svg"
theme.widget_hdd = theme.dir .. "/awesome-icons/server.svg"
theme.widget_music = theme.dir .. "/awesome-icons/music.svg"
theme.widget_music_on = theme.dir .. "/awesome-icons/music.svg"
theme.widget_vol = theme.dir .. "/awesome-icons/volume-up.svg"
theme.widget_vol_low = theme.dir .. "/awesome-icons/volume-down.svg"
theme.widget_vol_no = theme.dir .. "/awesome-icons/volume-off.svg"
theme.widget_vol_mute = theme.dir .. "/awesome-icons/volume-mute.svg"
theme.widget_mail = theme.dir .. "/awesome-icons/envelope.svg"
theme.widget_mail_on = theme.dir .. "/awesome-icons/envelope.svg"
theme.tasklist_plain_task_name = true
theme.tasklist_disable_icon = true
theme.useless_gap = dpi(10)
theme.titlebar_close_button_focus = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"
theme.icon_margin = 10

local markup = lain.util.markup
local separators = lain.util.separators
local keyboardlayout = awful.widget.keyboardlayout:new()

-- Textclock Widget
local clockicon = wibox.widget.imagebox(theme.widget_clock)
local clock =
    awful.widget.watch(
    "date +'%I:%M:%S %p'",
    1,
    function(widget, stdout)
        widget:set_markup(" " .. markup.font(theme.font, stdout))
    end
)

-- Calendar Widget
theme.cal =
    lain.widget.cal(
    {
        attach_to = {clock, clockicon},
        notification_preset = {
            font = theme.font,
            fg = theme.fg_normal,
            bg = theme.bg_normal
        }
    }
)

-- Mail IMAP Widget:
local mailicon = wibox.widget.imagebox(theme.widget_mail)
mailicon:buttons(
    my_table.join(
        awful.button(
            {},
            1,
            function()
                awful.spawn(mail)
            end
        )
    )
)
theme.mail =
    lain.widget.imap(
    {
        timeout = 300,
        server = "imap.gmail.com",
        mail = "",
        password = "",
        settings = function()
            if mailcount > 0 then
                widget:set_markup(markup.font(theme.font, "" .. mailcount .. " "))
                mailicon:set_image(theme.widget_mail_on)
            else
                widget:set_text("")
                mailicon:set_image(theme.widget_mail)
            end
        end
    }
)

-- MPD Widget
local musicplr = awful.util.terminal .. " -t Music -e ncmpcpp"
local mpdicon = wibox.widget.imagebox(theme.widget_music)
theme.mpd =
    lain.widget.mpd(
    {
        settings = function()
            if mpd_now.state == "play" then
                artist = " " .. mpd_now.artist
                title = " " .. mpd_now.title .. " "
                mpdicon:set_image(theme.widget_music_on)
            elseif mpd_now.state == "pause" then
                artist = ""
                title = ""
                mpdicon:set_image(theme.widget_music)
            else
                artist = ""
                title = ""
                mpdicon:set_image(theme.widget_music)
            end

            widget:set_markup(markup.font(theme.font, markup(theme.fg_focus, artist) .. markup(theme.fg_normal, title)))
        end
    }
)
mpdicon:buttons(
    my_table.join(
        awful.button(
            {"Mod4"},
            1,
            function()
                awful.spawn(musicplr)
            end
        ),
        awful.button(
            {},
            1,
            function()
                os.execute("mpc prev")
                theme.mpd.update()
            end
        ),
        awful.button(
            {},
            2,
            function()
                os.execute("mpc toggle")
                theme.mpd.update()
            end
        ),
        awful.button(
            {},
            3,
            function()
                os.execute("mpc next")
                theme.mpd.update()
            end
        )
    )
)

-- MEM Widget
local memicon = wibox.widget.imagebox(theme.widget_mem)
local mem =
    lain.widget.mem(
    {
        settings = function()
            widget:set_markup(markup.font(theme.font, "" .. mem_now.used .. "MB "))
        end
    }
)

-- CPU Widget
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu =
    lain.widget.cpu(
    {
        settings = function()
            widget:set_markup(markup.font(theme.font, "" .. cpu_now.usage .. "% "))
        end
    }
)

-- Coretemp Widget
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp =
    lain.widget.temp(
    {
        settings = function()
            widget:set_markup(markup.font(theme.font, "" .. coretemp_now .. "°C "))
        end
    }
)

-- FileSystem Widget
local fsicon = wibox.widget.imagebox(theme.widget_hdd)
theme.fs =
    lain.widget.fs(
    {
        notification_preset = {fg = theme.fg_normal, bg = theme.bg_normal, font = theme.font},
        settings = function()
            widget:set_markup(markup.font(theme.font, "" .. fs_now["/"].percentage .. "% "))
        end
    }
)

-- Battery Widget
local baticon = wibox.widget.imagebox(theme.widget_battery)
local bat =
    lain.widget.bat(
    {
        settings = function()
            if bat_now.status and bat_now.status ~= "N/A" then
                if bat_now.ac_status == 1 then
                    baticon:set_image(theme.widget_ac)
                elseif not bat_now.perc and tonumber(bat_now.perc) <= 10 then
                    baticon:set_image(theme.widget_battery_0)
                elseif not bat_now.perc and tonumber(bat_now.perc) <= 30 then
                    baticon:set_image(theme.widget_battery_25)
                elseif not bat_now.perc and tonumber(bat_now.perc) <= 55 then
                    baticon:set_image(theme.widget_battery_50)
                elseif not bat_now.perc and tonumber(bat_now.perc) <= 75 then
                    baticon:set_image(theme.widget_battery_75)
                else
                    baticon:set_image(theme.widget_battery)
                end
                widget:set_markup(markup.font(theme.font, "" .. bat_now.perc .. "% "))
            else
                widget:set_markup(markup.font(theme.font, "AC "))
                baticon:set_image(theme.widget_ac)
            end
        end
    }
)

-- ALSA Volume Widget
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume =
    lain.widget.alsa(
    {
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
    }
)
theme.volume.widget:buttons(
    awful.util.table.join(
        awful.button({}, 4,
            function()
                awful.util.spawn("amixer set Master 1%+")
                theme.volume.update()
            end
        ),
        awful.button({},5,
            function()
                awful.util.spawn("amixer set Master 1%-")
                theme.volume.update()
            end
        )
    )
)

-- Net Status Widget
local neticon = wibox.widget.imagebox(theme.widget_net)
local net =
    lain.widget.net(
    {
        settings = function()
            widget:set_markup(
                markup.font(
                    theme.font,
                    markup(theme.fg_normal, "" .. string.format("%06.1f", net_now.received) .. " ⇃") ..
                        "" .. markup(theme.fg_normal, "↾ " .. string.format("%06.1f", net_now.sent) .. " ")
                )
            )
        end
    }
)

-- Separators
local spr = wibox.widget.textbox(" ")
local arrl_dl = separators.arrow_left(theme.bg_focus, "alpha")
local arrl_ld = separators.arrow_left("alpha", theme.bg_focus)

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({app = awful.util.terminal})

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
    s.mylayoutbox:buttons(
        my_table.join(
            awful.button(
                {},
                1,
                function()
                    awful.layout.inc(1)
                end
            ),
            awful.button(
                {},
                2,
                function()
                    awful.layout.set(awful.layout.layouts[1])
                end
            ),
            awful.button(
                {},
                3,
                function()
                    awful.layout.inc(-1)
                end
            ),
            awful.button(
                {},
                4,
                function()
                    awful.layout.inc(1)
                end
            ),
            awful.button(
                {},
                5,
                function()
                    awful.layout.inc(-1)
                end
            )
        )
    )
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist =
        awful.widget.tasklist {
        screen = s,
        filter = awful.widget.tasklist.filter.currenttags,
        buttons = awful.util.tasklist_buttons,
        layout = {
            layout = wibox.layout.flex.horizontal
        },
        style = {
            align = "center"
        }
    }
    -- Create the systray
    s.mysystray =
        wibox.container.background(
        wibox.container.margin(
            wibox.widget.systray(),
            theme.icon_margin / 2,
            theme.icon_margin,
            theme.icon_margin / 2,
            theme.icon_margin / 2,
            nil,
            true
        ),
        theme.bg_focus
    )
    s.mysystray.visible = false

    -- Create the MPD Tray
    s.mpdtray = wibox.container.background(theme.mpd.widget, theme.bg_focus)
    s.mpdtray.visible = true

    -- Create the wibox
    s.mywibox =
        awful.wibar({position = "top", screen = s, height = dpi(24), bg = theme.bg_normal, fg = theme.fg_normal})

    -- Add widgets to the wibox
    s.mywibox:setup {
        -- Left Widgets:
        layout = wibox.layout.align.horizontal,
        {
            layout = wibox.layout.fixed.horizontal,
            spr,
            s.mytaglist,
            s.mypromptbox,
            spr
        },
        -- Middle Widget:
        s.mytasklist, 
        -- Right Widgets:
        {
            layout = wibox.layout.fixed.horizontal,
            spr,
            s.mpdtray,
            spr,
            s.mysystray,
            --keyboardlayout,
            --wibox.container.background(spr, theme.bg_focus),
            --wibox.container.background(wibox.container.margin(mpdicon, theme.icon_margin, theme.icon_margin, theme.icon_margin, theme.icon_margin), theme.bg_focus),
            --wibox.container.background(theme.mpd.widget, theme.bg_focus),
            --wibox.container.background(spr, theme.bg_focus),
            --spr,
            --wibox.container.background(spr, theme.bg_focus),
            --wibox.container.background(wibox.container.margin(mailicon, theme.icon_margin, theme.icon_margin*2, theme.icon_margin, theme.icon_margin), theme.bg_focus),
            --wibox.container.background(theme.mail.widget, theme.bg_focus),
            spr,
            wibox.container.background(
                wibox.container.margin(
                    volicon,
                    theme.icon_margin,
                    theme.icon_margin * 2,
                    theme.icon_margin,
                    theme.icon_margin
                ),
                theme.bg_focus
            ),
            wibox.container.background(theme.volume.widget, theme.bg_focus),
            spr,
            wibox.container.background(
                wibox.container.margin(
                    memicon,
                    theme.icon_margin,
                    theme.icon_margin * 2,
                    theme.icon_margin,
                    theme.icon_margin
                ),
                theme.bg_focus
            ),
            wibox.container.background(mem.widget, theme.bg_focus),
            spr,
            wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(
                wibox.container.margin(
                    cpuicon,
                    theme.icon_margin,
                    theme.icon_margin * 2,
                    theme.icon_margin,
                    theme.icon_margin
                ),
                theme.bg_focus
            ),
            wibox.container.background(cpu.widget, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            spr,
            wibox.container.background(
                wibox.container.margin(
                    tempicon,
                    theme.icon_margin,
                    theme.icon_margin * 2,
                    theme.icon_margin,
                    theme.icon_margin
                ),
                theme.bg_focus
            ),
            wibox.container.background(temp.widget, theme.bg_focus),
            spr,
            wibox.container.background(
                wibox.container.margin(
                    baticon,
                    theme.icon_margin,
                    theme.icon_margin * 2,
                    theme.icon_margin,
                    theme.icon_margin
                ),
                theme.bg_focus
            ),
            wibox.container.background(bat.widget, theme.bg_focus),
            spr,
            wibox.container.background(
                wibox.container.margin(
                    neticon,
                    theme.icon_margin,
                    theme.icon_margin * 2,
                    theme.icon_margin,
                    theme.icon_margin
                ),
                theme.bg_focus
            ),
            wibox.container.background(net.widget, theme.bg_focus),
            spr,
            wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(
                wibox.container.margin(
                    clockicon,
                    theme.icon_margin,
                    theme.icon_margin * 2,
                    theme.icon_margin,
                    theme.icon_margin
                ),
                theme.bg_focus
            ),
            wibox.container.background(clock, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            spr,
            wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(
                wibox.container.margin(
                    s.mylayoutbox,
                    theme.icon_margin,
                    theme.icon_margin,
                    theme.icon_margin,
                    theme.icon_margin
                ),
                theme.bg_focus
            ),
            wibox.container.background(spr, theme.bg_focus)
        }
    }
end
return theme
