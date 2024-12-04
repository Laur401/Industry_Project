if callType == LuaCallType.SwitchDone then
    if api.contains(g_unparent, context) then
        for _, obj in pairs(g_unparentObj) do
            api.getElement(obj).transform.parent = g_rootObject.transform
        end
    end
end