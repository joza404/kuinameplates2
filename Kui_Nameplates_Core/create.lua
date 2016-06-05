--------------------------------------------------------------------------------
-- Kui Nameplates
-- By Kesava at curse.com
-- All rights reserved
--------------------------------------------------------------------------------
-- element create/update functions
--------------------------------------------------------------------------------
local folder,ns=...
local addon = KuiNameplates
local kui = LibStub('Kui-1.0')
local core = KuiNameplatesCore
local MEDIA = 'interface/addons/kui_nameplates/media/'

core.font = kui.m.f.francois
local FONT = core.font

-- TODO configuration
local sizes = {
    width = 132,
    height = 13,
    width_minus = 72,
    height_minus = 9,
    height_no_name = 9,
    glow = 8,
}
local target_glow_colour = { .3, .7, 1, 1 }
-- helper functions ############################################################
local CreateStatusBar
do
    local function FilledBar_SetStatusBarColor(self,...)
        self:orig_SetStatusBarColor(...)
        self.fill:SetVertexColor(...)
    end
    function CreateStatusBar(parent)
        local bar = CreateFrame('StatusBar',nil,parent)
        bar:SetStatusBarTexture(kui.m.t.bar)
        bar:SetFrameLevel(0)

        local fill = parent:CreateTexture(nil,'BACKGROUND',nil,2)
        fill:SetTexture(kui.m.t.bar)
        fill:SetAllPoints(bar)
        fill:SetAlpha(.2)

        bar.fill = fill

        bar.orig_SetStatusBarColor = bar.SetStatusBarColor
        bar.SetStatusBarColor = FilledBar_SetStatusBarColor

        return bar
    end
end
local function CreateFontString(parent)
    local f = parent:CreateFontString(nil,'OVERLAY')
    f:SetFont(FONT,11,'THINOUTLINE')

    return f
end
-- create/update functions #####################################################
-- frame background ############################################################
local function UpdateFrameSize(f)
    -- set frame size and position
    if f.state.minus then
        f.bg:SetSize(sizes.width_minus,sizes.height_minus)
    else
        f.bg:SetSize(sizes.width,sizes.height)
    end

    if f.state.no_name then
        f.bg:SetHeight(sizes.height_no_name)
    end

    -- calculate point to remain pixel-perfect
    f.x = floor((addon.width / 2) - (f.bg:GetWidth() / 2))
    f.y = floor((addon.height / 2) - (f.bg:GetHeight() / 2))

    f.bg:SetPoint('BOTTOMLEFT',f.x,f.y)

    f:UpdateMainBars()
    f:SpellIconSetWidth()
end
function core:CreateBackground(f)
    local bg = f:CreateTexture(nil,'BACKGROUND',nil,1)
    bg:SetTexture(kui.m.t.solid)
    bg:SetVertexColor(0,0,0,.8)

    f.bg = bg
    f.UpdateFrameSize = UpdateFrameSize
end
-- highlight ###################################################################
function core:CreateHighlight(f)
    local highlight = f.HealthBar:CreateTexture(nil,'ARTWORK',nil,1)
    highlight:SetTexture(kui.m.t.bar)
    highlight:SetAllPoints(f.HealthBar)
    highlight:SetVertexColor(1,1,1,.4)
    highlight:SetBlendMode('ADD')
    highlight:Hide()

    f.handler:RegisterElement('Highlight',highlight)
end
-- health bar ##################################################################
local function UpdateMainBars(f)
    -- update health/power bar size
    local hb_height = f.bg:GetHeight()-2

    if f.PowerBar and f.PowerBar:IsShown() then
        hb_height = hb_height - 3
        f.PowerBar:SetHeight(2)
    end

    f.HealthBar:SetHeight(hb_height)
end
function core:CreateHealthBar(f)
    local healthbar = CreateStatusBar(f)

    healthbar:SetPoint('TOPLEFT',f.bg,1,-1)
    healthbar:SetPoint('RIGHT',f.bg,-1,0)

    f.handler:SetBarAnimation(healthbar,'cutaway')
    f.handler:RegisterElement('HealthBar',healthbar)

    f.UpdateMainBars = UpdateMainBars
end
-- name text ###################################################################
function core:CreateNameText(f)
    local nametext = CreateFontString(f)
    nametext:SetPoint('BOTTOM',f.HealthBar,'TOP',0,-3.5)

    f.handler:RegisterElement('NameText',nametext)
end
-- frame glow ##################################################################
do
    -- frame glow texture coords
    local glow_coords = {
        { .05, .95,  0,  .24 }, -- top
        { .05, .95, .76,  1 },  -- bottom
        {  0,  .04,  0,   1 },  -- left
        { .96,  1,   0,   1 }   -- right
    }
    -- frame glow prototype
    local glow_prototype = {}
    glow_prototype.__index = glow_prototype
    function glow_prototype:SetVertexColor(...)
        for _,side in ipairs(self.sides) do
            side:SetVertexColor(...)
        end
    end
    function glow_prototype:Show(...)
        for _,side in ipairs(self.sides) do
            side:Show(...)
        end
    end
    function glow_prototype:Hide(...)
        for _,side in ipairs(self.sides) do
            side:Hide(...)
        end
    end
    function glow_prototype:SetSize(...)
        for i,side in ipairs(self.sides) do
            if i > 2 then
                side:SetWidth(...)
            else
                side:SetHeight(...)
            end
        end
    end
    -- update
    local function UpdateFrameGlow(f)
        f.ThreatGlow:Show()

        if f.unit and f.handler:IsTarget() then
            f.ThreatGlow:SetVertexColor(unpack(target_glow_colour))
        elseif not f.state.glowing then
            f.ThreatGlow:SetVertexColor(0,0,0,.6)
        end
    end
    -- create
    function core:CreateFrameGlow(f)
        local glow = { sides = {} }
        setmetatable(glow,glow_prototype)

        for side,coords in ipairs(glow_coords) do
            side = f:CreateTexture(nil,'BACKGROUND',nil,-5)
            side:SetTexture(MEDIA..'frameglow')
            side:SetTexCoord(unpack(coords))

            tinsert(glow.sides,side)
        end

        glow:SetSize(sizes.glow)

        glow.sides[1]:SetPoint('BOTTOMLEFT', f.bg, 'TOPLEFT', 1, -1)
        glow.sides[1]:SetPoint('BOTTOMRIGHT', f.bg, 'TOPRIGHT', -1, -1)

        glow.sides[2]:SetPoint('TOPLEFT', f.bg, 'BOTTOMLEFT', 1, 1)
        glow.sides[2]:SetPoint('TOPRIGHT', f.bg, 'BOTTOMRIGHT', -1, 1)

        glow.sides[3]:SetPoint('TOPRIGHT', glow.sides[1], 'TOPLEFT')
        glow.sides[3]:SetPoint('BOTTOMRIGHT', glow.sides[2], 'BOTTOMLEFT')

        glow.sides[4]:SetPoint('TOPLEFT', glow.sides[1], 'TOPRIGHT')
        glow.sides[4]:SetPoint('BOTTOMLEFT', glow.sides[2], 'BOTTOMRIGHT')

        f.handler:RegisterElement('ThreatGlow',glow)

        f.UpdateFrameGlow = UpdateFrameGlow
    end
end
-- castbar #####################################################################
do
    local function SpellIconSetWidth(f)
        -- set spell icon width
        f.bg:GetHeight() -- calling this coaxes it into calculating the height
        f.SpellIcon.bg:SetWidth(floor(f.SpellIcon.bg:GetHeight()*1.5))
    end
    local function ShowCastBar(f)
        if f.state.nameonly then return end

        -- also show attached elements
        f.CastBar.bg:Show()
        f.SpellIcon.bg:Show()
        f.SpellName:Show()

        f:SpellIconSetWidth()
    end
    local function HideCastBar(f)
        -- also hide attached elements
        f.CastBar.bg:Hide()
        f.SpellIcon.bg:Hide()
        f.SpellName:Hide()
    end
    function core:CreateCastBar(f)
        local bg = f:CreateTexture(nil,'BACKGROUND',nil,1)
        bg:SetTexture(kui.m.t.solid)
        bg:SetVertexColor(0,0,0,.8)
        bg:SetHeight(5)
        bg:SetPoint('TOPLEFT', f.bg, 'BOTTOMLEFT', 0, -1)
        bg:SetPoint('TOPRIGHT', f.bg, 'BOTTOMRIGHT')

        local castbar = CreateFrame('StatusBar', nil, f)
        castbar:SetFrameLevel(0)
        castbar:SetStatusBarTexture(kui.m.t.bar)
        castbar:SetStatusBarColor(.6, .6, .75)
        castbar:SetHeight(3)
        castbar:SetPoint('TOPLEFT', bg, 1, -1)
        castbar:SetPoint('BOTTOMRIGHT', bg, -1, 1)

        local spellname = f.HealthBar:CreateFontString(nil, 'OVERLAY')
        spellname:SetFont(FONT, 9, 'THINOUTLINE')
        spellname:SetPoint('TOP', castbar, 'BOTTOM', 0, -3.5)

        -- spell icon
        local spelliconbg = f:CreateTexture(nil, 'ARTWORK', nil, 0)
        spelliconbg:SetTexture(kui.m.t.solid)
        spelliconbg:SetVertexColor(0,0,0,.8)
        spelliconbg:SetPoint('BOTTOMRIGHT', bg, 'BOTTOMLEFT', -1, 0)
        spelliconbg:SetPoint('TOPRIGHT', f.bg, 'TOPLEFT', -1, 0)

        local spellicon = castbar:CreateTexture(nil, 'ARTWORK', nil, 1)
        spellicon:SetTexCoord(.1, .9, .25, .75)
        spellicon:SetPoint('TOPLEFT', spelliconbg, 1, -1)
        spellicon:SetPoint('BOTTOMRIGHT', spelliconbg, -1, 1)

        -- cast shield
        local spellshield = f.HealthBar:CreateTexture(nil, 'ARTWORK', nil, 2)
        spellshield:SetTexture('Interface\\AddOns\\Kui_Nameplates\\media\\Shield')
        spellshield:SetTexCoord(0, .84375, 0, 1)
        spellshield:SetSize(13.5, 16) -- 16 * .84375
        spellshield:SetPoint('LEFT', bg, -7, 0)
        spellshield:SetVertexColor(.5, .5, .7)

        -- spark
        local spark = castbar:CreateTexture(nil, 'ARTWORK')
        spark:SetDrawLayer('ARTWORK', 7)
        spark:SetVertexColor(1,1,.8)
        spark:SetTexture('Interface\\AddOns\\Kui_Media\\t\\spark')
        spark:SetPoint('CENTER', castbar:GetRegions(), 'RIGHT', 1, 0)
        spark:SetSize(6,9)

        -- hide elements by default
        bg:Hide()
        castbar:Hide()
        spelliconbg:Hide()
        spellshield:Hide()
        spellname:Hide()

        castbar.bg = bg
        spellicon.bg = spelliconbg

        f.handler:RegisterElement('CastBar', castbar)
        f.handler:RegisterElement('SpellName', spellname)
        f.handler:RegisterElement('SpellIcon', spellicon)
        f.handler:RegisterElement('SpellShield', spellshield)

        f.ShowCastBar = ShowCastBar
        f.HideCastBar = HideCastBar
        f.SpellIconSetWidth = SpellIconSetWidth
    end
end
-- auras #######################################################################
function core:CreateAuras(f)
    local auras = f.handler:CreateAuraFrame({
        kui_whitelist = true,
        max = 10,
        point = {'BOTTOMLEFT','LEFT','RIGHT'},
        x_spacing = 1,
        y_spacing = 1,
        rows = 2
    })
    auras:SetWidth(124)
    auras:SetHeight(10)
    auras:SetPoint('BOTTOMLEFT',f.HealthBar,'TOPLEFT',4,15)
end
