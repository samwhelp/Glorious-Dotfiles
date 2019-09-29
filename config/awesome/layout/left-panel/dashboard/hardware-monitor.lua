local wibox = require('wibox')
local gears = require('gears')

local mat_list_item = require('widget.material.list-item')

local hardwareTitle = wibox.widget
{
  text = 'Hardware monitor',
  font = 'Roboto medium 12',
  align = 'center',
  widget = wibox.widget.textbox

}

return wibox.widget {
  wibox.widget {
    wibox.widget {
      hardwareTitle,
      bg = '#ffffff20',
      shape = gears.shape.rounded_rect,
      widget = wibox.container.background(hardwareTitle)
    },
    widget = mat_list_item
  },
  require('widget.cpu.cpu-meter'),
  require('widget.ram.ram-meter'),
  require('widget.temperature.temperature-meter'),
  require('widget.harddrive.harddrive-meter'),
  layout = wibox.layout.fixed.vertical
}
