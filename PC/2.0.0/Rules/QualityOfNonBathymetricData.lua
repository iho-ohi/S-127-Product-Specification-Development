function QualityOfNonBathymetricData(feature, featurePortrayal, contextParameters)
    local viewingGroup

    if feature.PrimitiveType == PrimitiveType.Surface then
        viewingGroup = 31020
        featurePortrayal:AddInstructions('ViewingGroup:31010;DrawingPriority:0;DisplayPlane:UnderRadar;NullInstruction')
    end

    return viewingGroup
end