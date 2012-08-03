---------------------------
-- Default awesome theme --
---------------------------


theme = {}                                                                     
theme.themedir      = awful.util.getdir("config")                             
theme.themedir      = theme.themedir .. "/themes/default"

theme.font          = "sans 8"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#666666"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.fg_widget        = "#AECF96"
theme.fg_center_widget = "#88A175"
theme.fg_end_widget    = "#FF5656"
theme.fg_off_widget    = "#494B4F"

theme.border_width  = "1"
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   =  theme.themedir .. "/icons//taglist/squarefw.png"
theme.taglist_squares_unsel = theme.themedir .. "/icons/taglist/squarew.png"

theme.tasklist_floating_icon = theme.themedir .. "/icons/tasklist/floatingw.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme.themedir .. "/icons/submenu.png"
theme.menu_height = "15"
theme.menu_width  = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = theme.themedir .. "/icons/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = theme.themedir .. "/icons//titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme.themedir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme.themedir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme.themedir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme.themedir .. "/icons/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme.themedir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme.themedir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme.themedir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme.themedir .. "/icons/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme.themedir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme.themedir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme.themedir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme.themedir .. "/icons/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.themedir .. "/icons/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.themedir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme.themedir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = theme.themedir .. "/icons/titlebar/maximized_focus_active.png"

-- You can use your own command to set your wallpaper
theme.wallpaper_cmd = { "awsetbg -u feh -r /home/khalavak/Pictures/Wallpaper/" }

-- You can use your own layout icons like this:
theme.layout_fairh = theme.themedir .. "/icons/layouts/fairh.png"
theme.layout_fairv = theme.themedir .. "/icons/layouts/fairv.png"
theme.layout_floating  = theme.themedir .. "/icons/layouts/floating.png"
theme.layout_magnifier = theme.themedir .. "/icons/layouts/magnifier.png"
theme.layout_max = theme.themedir .. "/icons/layouts/max.png"
theme.layout_fullscreen = theme.themedir .. "/icons/layouts/fullscreen.png"
theme.layout_tilebottom = theme.themedir .. "/icons/layouts/tilebottom.png"
theme.layout_tileleft   = theme.themedir .. "/icons/layouts/tileleft.png"
theme.layout_tile = theme.themedir .. "/icons/layouts/tile.png"
theme.layout_tiletop = theme.themedir .. "/icons/layouts/tiletop.png"
theme.layout_spiral  = theme.themedir .. "/icons/layouts/spiral.png"
theme.layout_dwindle = theme.themedir .. "/icons/layouts/dwindle.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

--  Widget icons                                                            
theme.widget_cpu = theme.themedir .. "/icons/widgets/cpu.png"                       
theme.widget_bat = theme.themedir .. "/icons/widgets/bat.png"                       
theme.widget_mem = theme.themedir .. "/icons/widgets/mem.png"                       
theme.widget_fs  = theme.themedir .. "/icons/widgets/disk.png"                      
theme.widget_net = theme.themedir .. "/icons/widgets/down.png"                      
theme.widget_netup = theme.themedir .. "/icons/widgets/up.png"                        
theme.widget_wifi  = theme.themedir .. "/icons/widgets/wifi.png"                      
theme.widget_mail  = theme.themedir .. "/icons/widgets/mail.png"                      
theme.widget_vol   = theme.themedir .. "/icons/widgets/vol.png"                       
theme.widget_org   = theme.themedir .. "/icons/widgets/cal.png"                       
theme.widget_date  = theme.themedir .. "/icons/widgets/time.png"                      
theme.widget_crypto = theme.themedir .. "/icons/widgets/crypto.png"                    
theme.widget_sep = theme.themedir .. "/icons/widgets/separator.png"                 
return theme
