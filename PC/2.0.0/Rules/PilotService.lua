function PilotService(feature, featurePortrayal, contextParameters)
    local viewingGroup = 31020
    if feature.PrimitiveType == PrimitiveType.Surface then

        featurePortrayal:AddInstructions('ViewingGroup:' .. viewingGroup .. ';DrawingPriority:12;DisplayPlane:UnderRADAR;PointInstruction:127INFO')
        featurePortrayal:SimpleLineStyle('dash',0.64,'UINFB')
        featurePortrayal:AddInstructions('LineInstruction:_simple_')

        local featureName = GetFeatureName(feature, contextParameters)
        if (featureName) then
            featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:UnderRADAR;LocalOffset:4,0;')
            featurePortrayal:AddTextInstruction(EncodeString(featureName), 26, 24, viewingGroup, 9)
        end
    end
    return viewingGroup
end
