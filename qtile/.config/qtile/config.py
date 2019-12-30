from libqtile import bar, hook, layout, widget
from libqtile.command import lazy
from libqtile.config import Click, Drag, Group, Key, Screen

wmname = 'qtile'
mod = 'mod1'

# Key bindings
keys = [
    # Window manager controls
    Key([mod, 'control'], 'r', lazy.restart()),
    Key([mod, 'control'], 'q', lazy.shutdown()),
    Key([mod], 'Return', lazy.spawn('urxvt')),
    Key([mod, 'shift'], 'q',      lazy.window.kill()),

    Key([mod], 'Left', lazy.screen.prevgroup()),
    Key([mod], 'Right', lazy.screen.nextgroup()),

    # Layout modification
    Key([mod, 'control'], 'space', lazy.window.toggle_floating()),

    # Switch between windows in current stack pane
    Key([mod], 'j', lazy.layout.down()),
    Key([mod], 'k', lazy.layout.up()),
    Key([mod], 'h', lazy.layout.right()),
    Key([mod], 'l', lazy.layout.left()),

    # Move windows up or down in current stack
    Key([mod, 'control'], 'j', lazy.layout.shuffle_down()),
    Key([mod, 'control'], 'k', lazy.layout.shuffle_up()),
    Key([mod, 'control'], 'h', lazy.layout.shuffle_right()),
    Key([mod, 'control'], 'l', lazy.layout.shuffle_left()),

    # Switch window focus to other pane(s) of stack
    Key([mod], 'space', lazy.layout.next()),

    # Toggle between different layouts as defined below
    Key([mod], 'Tab', lazy.next_layout()),
    Key([mod], 'm', lazy.to_layout_index(0)),

    # ROFI program spawner
    Key([mod], 'r', lazy.spawn("rofi -show run")),
]

# Mouse bindings and options
mouse = (
    Drag([mod], 'Button1', lazy.window.set_position_floating(),
        start=lazy.window.get_position()),
    Drag([mod], 'Button3', lazy.window.set_size_floating(),
        start=lazy.window.get_size()),
)

bring_front_click = True
cursor_warp = False
follow_mouse_focus = True

# Groups
groups = [
    Group('a'),
    Group('s'),
    Group('d'),
    Group('f'),
    Group('u'),
    Group('i'),
    Group('o'),
    Group('p'),
]
for i in groups:
    # mod + letter of group = switch to group
    keys.append(Key([mod], i.name, lazy.group[i.name].toscreen()))

    # mod + shift + letter of group = switch to & move focused window to group
    keys.append(Key([mod, 'shift'], i.name, lazy.window.togroup(i.name)))

dgroups_key_binder = None
dgroups_app_rules = []

# Layouts
layouts = [
    layout.Max(),
    layout.Stack(num_stacks=2),
    layout.Tile(),
    layout.Columns(),
    layout.RatioTile(),
    layout.Matrix(),
]

floating_layout = layout.Floating()

# Screens and widget options
screens = [
    Screen(
        top=bar.Bar(
            widgets=[
                widget.GroupBox(
                    highlight_method='block',
                    inactive='999999'
                ),
                widget.Prompt(),
                widget.WindowName(),
                widget.Systray(),
                widget.Clock(format='%a %d %b %I:%M %p'),
            ],
            size=30,
            background=['222222', '111111'],
        ),
    ),
]

widget_defaults = dict(
    font='Arial',
    fontsize=15,
)

auto_fullscreen = True


def main(qtile):
    ''' This function is called when Qtile starts. '''
    lazy.spawn('redshift')
