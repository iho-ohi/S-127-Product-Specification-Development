require 'PortrayalModel'

function VesselTrafficServiceArea(feature, featurePortrayal, contextParameters)
    local viewingGroup
    if feature.PrimitiveType == PrimitiveType.Surface then
	    local featureName = GetFeatureName(feature, contextParameters)
        viewingGroup = 36050

        if (featureName) then
            featurePortrayal:AddInstructions('ViewingGroup:36050;DrawingPriority:15;DisplayPlane:UnderRADAR;LocalOffset:4,0;')
            featurePortrayal:AddTextInstruction(EncodeString(featureName, '%s'), 26, 27, 36050, 15, 0)
        end

        featurePortrayal:AddInstructions('ViewingGroup:36050;DrawingPriority:14;DisplayPlane:OverRADAR;PointInstruction:127INFO')
        featurePortrayal:SimpleLineStyle('dash',0.64,'UINFB')
        featurePortrayal:AddInstructions('LineInstruction:_simple_')
    end

    return viewingGroup
end
