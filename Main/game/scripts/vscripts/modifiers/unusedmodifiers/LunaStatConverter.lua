require('settings')
if LunaStatConverter == nil then
	LunaStatConverter = class({})
end

local heroesmodifiers = {
  {"npc_dota_hero_luna", "modifier_luna_lunar_blessing_aura", 1},
}


function LunaStatConverter:GetAttributes() 
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end

function LunaStatConverter:DeclareFunctions() --we want to use these functions in this item
    local funcs = {
        MODIFIER_PROPERTY_STATS_AGILITY_BONUS,
        MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
        MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
    }

    return funcs
end

function LunaStatConverter:OnCreated(kv) 
	local owner = self:GetParent()
	self.strength = 0
	self.agility = 0
	self.intellect = 0
	if (IsServer()) then
		self:StartIntervalThink(5)
	end
end

function LunaStatConverter:OnIntervalThink( kv )
	self.strength = 0
	self.agility = 0
	self.intellect = 0
	if (IsServer()) then
		if self:GetParent():HasModifier(heroesmodifiers[1][2]) then
			local abilitymod = heroesmodifiers[1][2]
			for k, v in ipairs(self:GetParent():GetChildren()) do
				Msg(v:GetName())
				Msg("\n")
			end
		end
	end
end


function LunaStatConverter:GetModifierBonusStats_Agility()
		return self.agility
end

function LunaStatConverter:GetModifierBonusStats_Strength()
		return self.strength
end

function LunaStatConverter:GetModifierBonusStats_Intellect()
		return self.intellect
end

function LunaStatConverter:IsHidden()
    return true
end

function LunaStatConverter:IsPermanent() 
	return true
end

function LunaStatConverter:IsPurgable()
	return false
end