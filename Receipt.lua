---
--- Created by deck.
--- DateTime: 2024-12-12 15:01
---

if callType == LuaCallType.Init then
    xMin = math.min(g_receiptBoundA.transform.position.x,g_receiptBoundB.transform.position.x)
    xMax = math.max(g_receiptBoundA.transform.position.x,g_receiptBoundB.transform.position.x)
    zMin = math.min(g_receiptBoundA.transform.position.z,g_receiptBoundB.transform.position.z)
    zMax = math.max(g_receiptBoundA.transform.position.z,g_receiptBoundB.transform.position.z)
    for i, obj in pairs(g_receipt) do
        object=api.getElement(obj)
        object.zoomScaleModifier = .7
        object.pinScaleModifier = .3
        object.groundEulerAngles = api.vector3(0, 180, 270)
    end
    function clamp (x,min,max)
        return math.min(math.max(x,min),max)
    end
    function tableContains(table, value)
      for i = 1,#table do
        if (table[i] == value) then
          return true
        end
      end
      return false
    end
    
    function isReceipt(contextTarget)
        if contextTarget == g_receiptPiece_1 then return true end
        if contextTarget == g_receiptPiece_2 then return true end
        if contextTarget == g_receiptPiece_3 then return true end
        if contextTarget == g_receiptPiece_4 then return true end
        if contextTarget == g_receiptPiece_5 then return true end
        if contextTarget == g_receiptPiece_6 then return true end
        return false
    end
end
if callType == LuaCallType.CustomPointer and isReceipt(context.context.target) then
    local dragPosition = context.context.target.transform.position
    local delta_X = -1*context.gestureMovement.x / 3000
    local delta_Z = -1*context.gestureMovement.y / 3000
    local X = clamp(dragPosition.x + delta_X,xMin,xMax)
    local Z = clamp(dragPosition.z + delta_Z,zMin,zMax)
    context.context.target.transform.position = api.vector3(X, dragPosition.y, Z)
    --api.log(context.context.target.transform.position)
end