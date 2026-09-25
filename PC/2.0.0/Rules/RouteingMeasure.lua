function RouteingMeasure(feature, featurePortrayal, contextParameters)
    local viewingGroup
    if feature.PrimitiveType == PrimitiveType.Surface then
        viewingGroup = 36050
        featurePortrayal:AddInstructions('ViewingGroup:36050;DrawingPriority:14;DisplayPlane:OverRADAR;PointInstruction:127INFO')
        featurePortrayal:SimpleLineStyle('dash',0.64,'UINFB')
        featurePortrayal:AddInstructions('LineInstruction:_simple_')

    elseif feature.PrimitiveType == PrimitiveType.Curve then
         viewingGroup = 36050
        featurePortrayal:AddInstructions('ViewingGroup:36050;DrawingPriority:14;DisplayPlane:OverRADAR;PointInstruction:127SYMB')
        featurePortrayal:SimpleLineStyle('dash',0.64,'UINFB')
        featurePortrayal:AddInstructions('LineInstruction:_simple_')
    end

    return viewingGroup
end
