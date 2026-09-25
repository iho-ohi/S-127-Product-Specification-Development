function ConcentrationOfShippingHazardArea(feature, featurePortrayal, contextParameters)
    local viewingGroup

    if feature.PrimitiveType == PrimitiveType.Surface then
        viewingGroup = 31020
        featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:12;DisplayPlane:OverRADAR;PointInstruction:127INFO')
        featurePortrayal:SimpleLineStyle('dash',0.64,'UINFB')
        featurePortrayal:AddInstructions('LineInstruction:_simple_')
    end

    return viewingGroup
end
