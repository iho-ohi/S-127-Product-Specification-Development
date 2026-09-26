function ShipReportingService(feature, featurePortrayal, contextParameters)
    if feature.PrimitiveType == PrimitiveType.Surface then
        featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:14;DisplayPlane:OverRADAR;PointInstruction:127INFO')
        featurePortrayal:SimpleLineStyle('dash',0.64,'UINFB')
        featurePortrayal:AddInstructions('LineInstruction:_simple_')
    end
    return 31020
end
