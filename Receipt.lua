---
--- Created by deck.
--- DateTime: 2024-12-12 15:01
---

if callType == LuaCallType.Init then
    for i, obj in pairs(g_receipt) do
        object=api.getElement(obj)
        object.zoomScaleModifier = .7
        object.pinScaleModifier = .3
        object.groundEulerAngles = api.vector3(0, 180, 270)
    end
    for i, obj in pairs(g_photo) do
        object=api.getElement(obj)
        object.zoomScaleModifier = .7
        object.pinScaleModifier = .3
        object.groundEulerAngles = api.vector3(270,0,0)
        
        object.eulerAnglesInventory=api.vector3(0,180,0) --angle in inventory when initially picking item up, rotates and updates to match eulerAnglesInventoryTarget
        object.eulerAnglesZoom=api.vector3(0,180,0) --angle in main inventory view (start of animation)
        object.eulerAnglesInventoryTarget=api.vector3(0,180,0) --angle in inventory
        object.eulerAnglesTarget=api.vector3(0,180,0) --angle in main inventory view
    end
end