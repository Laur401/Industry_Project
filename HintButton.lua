if callType == LuaCallType.SwitchStarted then
    if api.contains(g_button, context) and context.isOn then --need context.isOn because it triggers twice due to the Bounce
        api.levelNote("This is a hint button! It will be functional eventually.")
    end
end