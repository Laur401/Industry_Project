--[[
Script that allows for "pinning" an object to the screen. 
TODO: Add VR code
]]
if callType == LuaCallType.Init then
    player = api.getLocalPlayer()
    camera = player.gameObject.FindGameObjectWithTag('MainCamera')
    g_pinImage.transform.parent = camera.transform
    g_pinImage.transform.gameObject.layer = 5 --sets object's layer to 5 (Unity's UI layer)
end