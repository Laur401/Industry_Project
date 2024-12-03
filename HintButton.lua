if callType == LuaCallType.SwitchStarted then
    if api.contains(button, context) and context.isOn then
        api.levelNote("This is a hint button! It will be functional eventually.")
    end
end