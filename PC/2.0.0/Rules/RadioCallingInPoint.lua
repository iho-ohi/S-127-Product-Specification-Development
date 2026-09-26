function RadioCallingInPoint(feature, featurePortrayal, contextParameters)
    local viewingGroup

    if feature.PrimitiveType == PrimitiveType.Point then
        viewingGroup = 31020
        featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:14;DisplayPlane:OverRADAR;PointInstruction:127SYMBL')
    elseif feature.PrimitiveType == PrimitiveType.Curve then
        viewingGroup = 31020
        featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:14;DisplayPlane:OverRADAR')
        featurePortrayal:AddInstructions('LineInstruction:RDOCAL_1')
    end

    return viewingGroup
end
