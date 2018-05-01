# -*- coding: utf-8 -*-
require 'pp'

Plugin.create(:debug_tool) do
  command(:debug_tool_message_json,
          name: 'JSONをコピー',
          condition: lambda{ |opt| true },
          visible: true,
          role: :timeline) do |opt|
    messages = opt.messages.to_a
    json = if messages.size == 1
             messages.first.to_json
           else
             messages.to_json
           end
    Gtk::Clipboard.copy(json)
  end

  command(:debug_tool_all_keys,
          name: '全てのキーをコピー',
          condition: lambda{ |opt| true },
          visible: true,
          role: :timeline) do |opt|
    messages = opt.messages.to_a
    v = if messages.size == 1
             messages.first.instance_eval{ @value }
           else
             messages.instance_eval{ @value }
           end
    Gtk::Clipboard.copy(v.pretty_inspect)
  end
end

