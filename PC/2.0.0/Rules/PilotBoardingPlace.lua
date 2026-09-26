function PilotBoardingPlace(feature, featurePortrayal, contextParameters)
    local viewingGroup

    if feature.PrimitiveType == PrimitiveType.Surface then
        viewingGroup = 32400

        featurePortrayal:AddInstructions('ViewingGroup:32400;DrawingPriority:14;DisplayPlane:OverRADAR;PointInstruction:127INFO')
        featurePortrayal:SimpleLineStyle('dash',0.64,'UINFB')
        featurePortrayal:AddInstructions('LineInstruction:_simple_')

    elseif feature.PrimitiveType == PrimitiveType.Point then
        viewingGroup = 32400
        featurePortrayal:AddInstructions('ViewingGroup:32400;DrawingPriority:14;DisplayPlane:OverRADAR;PointInstruction:127SYMB')
    end

    return viewingGroup
end
