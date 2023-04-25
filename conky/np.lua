conky.config = {
    -- Run settings
    total_run_times = 0,
    update_interval = 1,

    -- Positioning
    alignment = 'bottom_left',
    gap_x = 249,
    gap_y = -112,
    minimum_width = 1200,
    maximum_width = 1200,
    minimum_height = 200,

    -- Draw settings
    double_buffer = true,
    draw_shades = false,
    draw_blended = false,

    -- Compositor settings
    own_window = true,
    own_window_argb_visual = true,
    own_window_argb_value = 0,
    own_window_transparent = true,
    own_window_hints = 'below,skip_taskbar,skip_pager',
    own_window_type = 'dock',

    -- Text settings
    uppercase = false,
    use_xft = true,
    override_utf8_locale = true
};

conky.text = [[
${if_running spotify}
${color #fff}${font Monospace:pixelsize=1}
${color #fff}${font Monospace:pixelsize=10}           ${font Monospace:pixelsize=14}${exec playerctl -p spotify metadata artist}${font Ubuntu Mono Regular:pixelsize=8}
${color #fff}${font Monospace:pixelsize=10}           ${font Monospace:pixelsize=14}${exec playerctl -p spotify metadata title}

${else}${if_match "" != "${exec playerctl -p spotifyd status}"}
${color #fff}${font Monospace:pixelsize=1}
${color #fff}${font Monospace:pixelsize=10}           ${font Monospace:pixelsize=14}${exec playerctl -p spotifyd metadata artist}${font Ubuntu Mono Regular:pixelsize=10}
${color #fff}${font Monospace:pixelsize=10}           ${font Monospace:pixelsize=14}${exec playerctl -p spotifyd metadata title}
]];
