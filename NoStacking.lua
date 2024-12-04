if callType == LuaCallType.Init then
    for _, obj in pairs(nostack) do
        api.getElement(obj).collectionId = 0
    end
end