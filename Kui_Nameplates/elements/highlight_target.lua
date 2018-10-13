local addon = KuiNameplates
local ele = addon:NewElement('Highlight_Target')

function ele:GainedTarget(f)
    if f.elements.Highlight_Target then
        f.Highlight_Target:Show()
    end
end

function ele:LostTarget(f)
    if f.elements.Highlight_Target then
        f.Highlight_Target:Hide()
    end
end

function ele:OnEnable()
    self:RegisterMessage('GainedTarget')
    self:RegisterMessage('LostTarget')
end
